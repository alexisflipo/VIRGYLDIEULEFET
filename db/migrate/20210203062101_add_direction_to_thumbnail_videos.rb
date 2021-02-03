class AddDirectionToThumbnailVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :thumbnail_videos, :direction, :string
  end
end
