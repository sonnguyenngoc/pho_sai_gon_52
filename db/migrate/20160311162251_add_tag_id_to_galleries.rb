class AddTagIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :tag_id, :integer
  end
end
