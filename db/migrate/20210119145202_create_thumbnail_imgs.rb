class CreateThumbnailImgs < ActiveRecord::Migration[6.0]
  def change
    create_table :thumbnail_imgs do |t|
      t.string :photo

      t.timestamps
    end
  end
end
