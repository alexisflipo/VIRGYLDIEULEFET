class ThumbnailImg < ApplicationRecord
    has_one_attached :photo
    validates :photo, size: { less_than: 11.megabytes, 
    message: "La photo ne doit pas dépasser 10 mo"}
    validates :photo, attached: true
end
