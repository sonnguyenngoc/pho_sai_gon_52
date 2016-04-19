class CreateRails < ActiveRecord::Migration
  def change
    create_table :rails do |t|
      t.string :g
      t.string :model
      t.string :GalleryDetail
      t.string :image_url
      t.integer :gallery_id

      t.timestamps null: false
    end
  end
end
