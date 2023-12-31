class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :ices, dependent: :destroy
         has_many :likes, dependent: :destroy
         has_many :liked_ices, through: :likes, source: :ice
         def already_liked?(ice)
          self.likes.exists?(ice_id: ice.id)
        end
end
