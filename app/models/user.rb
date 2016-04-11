class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def self.update_smtp_auth_env(username, password)
    path = File.join(Rails.root, 'local_env.yml')
    data = YAML.load_file path
    data["GMAIL_USERNAME"] = username
    data["GMAIL_PASSWORD"] = password
    File.open(path, 'w') { |f| YAML.dump(data, f) }
    `touch tmp/restart.txt`
  end
end
