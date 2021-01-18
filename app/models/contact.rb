class Contact < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3}
    validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, 
    message: "Only allows valid emails"}
    validates :message, presence: true, length: { minimum: 10 }
end
