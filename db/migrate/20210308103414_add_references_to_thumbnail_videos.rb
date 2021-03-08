class AddReferencesToThumbnailVideos < ActiveRecord::Migration[6.0]
  def change
    add_reference :thumbnail_videos, :video_category, null: false, foreign_key: true
  end
end
