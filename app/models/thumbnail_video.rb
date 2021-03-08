class ThumbnailVideo < ApplicationRecord
    has_one_attached :video
    belongs_to :thumbnail_videos
    validates :video, size: { less_than: 100.megabytes, 
    message: "La vidéo doit pas dépasser 100 mo"}
end
