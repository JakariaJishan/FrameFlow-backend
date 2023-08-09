class Group < ApplicationRecord
  belongs_to :user
  has_many :members, dependent: :destroy

  validates :name, presence: true
end
