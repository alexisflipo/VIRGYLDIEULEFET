class ThumbnailVideo < ApplicationRecord
    has_one_attached :video
    belongs_to :video_category
    validates :video, size: { less_than: 100.megabytes, 
    message: "La vidéo doit pas dépasser 100 mo"}
end
