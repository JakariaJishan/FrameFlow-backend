class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :members, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
