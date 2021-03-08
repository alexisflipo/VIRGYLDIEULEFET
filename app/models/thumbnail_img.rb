class ThumbnailImg < ApplicationRecord
    has_one_attached :photo
    belongs_to :photo_category
    validates :photo, size: { less_than: 10.megabytes, 
    message: "La photo ne doit pas dépasser 10 mo"}
    validates :photo, attached: true

    # def thumbnail
    #    return self.photo.variant(resize: '70%').processed
    # end

end
