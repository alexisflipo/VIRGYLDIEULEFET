class AddReferencesToThumbnailImgs < ActiveRecord::Migration[6.0]
  def change
    add_reference :thumbnail_imgs, :photo_category, null: false, foreign_key: true
  end
end
