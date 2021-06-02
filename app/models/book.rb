class Book < ApplicationRecord
	belongs_to :user
	has_many :favorites

	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
