class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true
  belongs_to :user

  validates :likeable, presence: true
  validates :user, presence: true
end
