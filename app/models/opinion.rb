class Opinion< ApplicationRecord
	belongs_to :user
	has_many :opinion_comments, dependent: :destroy
	 attachment :image
end
