class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :opinion, dependent: :destroy
  has_many :opinion_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  def self.search(search)
        if search
          where(['name LIKE ?', "%#{search}%"])
        else
          all
        end
    end
end
