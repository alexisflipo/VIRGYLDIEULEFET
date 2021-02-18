class Contact < ApplicationRecord
    validates :name, length: { minimum: 3}, presence: true
    validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}
    validates :message, length: { minimum: 10, message: "Message too short" }, presence: true
end
