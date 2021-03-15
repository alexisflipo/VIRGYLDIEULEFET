class PhotoCategory < ApplicationRecord
    has_many :thumbnail_imgs
    has_one_attached :photo
    validates :photo, size: { less_than: 10.megabytes, 
    message: "La photo ne doit pas dépasser 10 mo"}
    validates :photo, attached: true
    validates :name, presence: true
    validates_uniqueness_of :name
end
