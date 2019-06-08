class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :username, presence: true, uniqueness: true
	validates :password,  presence: true, length: {6..128}
end
