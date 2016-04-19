class CreateGalleryDetails < ActiveRecord::Migration
  def change
    create_table :gallery_details do |t|
      t.string :image_url
      t.integer :gallery_id

      t.timestamps null: false
    end
  end
end
