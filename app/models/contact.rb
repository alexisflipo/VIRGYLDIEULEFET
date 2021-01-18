class Contact < ApplicationRecord
    validates :name, length: { minimum: 3}
    validates :name, presence: true
    validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, 
    message: "Only allows valid emails"}
    validates :message, length: { minimum: 10 }
    validates :presence: true
end
