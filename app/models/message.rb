class Message < ApplicationRecord
	validates :name,  presence: true, length: { maximum: 30 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  	validates :email, presence: true, length: { maximum: 30 },
                    format: { with: VALID_EMAIL_REGEX }
   VALID_NUM_REGEX = /\A\d*\z/
   validates :phone_number, presence: true, length: { maximum: 16 },
   				format: { with: VALID_NUM_REGEX }
   	validates :message, presence: true
end
