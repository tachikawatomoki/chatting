class Opinion < ApplicationRecord
	belongs_to :user
	has_many :opinion_comment, dependent: :destroy
	 attachment :image
end
