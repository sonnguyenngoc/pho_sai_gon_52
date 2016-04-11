class Admin::SettingController < ApplicationController
  def smtp_gmail_auth
    if params[:email].present? and params[:password].present?
      User.update_smtp_auth_env params[:email].strip, params[:password].strip
      respond_to do |format|
        format.html { redirect_to admin_smtp_gmail_auth_path, notice: 'SMTP setting was successfully updated.' }
      end
    end    
  end
end
