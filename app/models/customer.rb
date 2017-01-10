class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	
	has_one :wishlist, dependent: :destroy
	has_one :cart, dependent: :destroy

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
end
