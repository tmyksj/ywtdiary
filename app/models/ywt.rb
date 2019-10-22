class Ywt < ApplicationRecord
  belongs_to :user

  validates :y, presence: true, length: { maximum: 250 }
  validates :w, presence: true, length: { maximum: 250 }
  validates :t, presence: true, length: { maximum: 250 }
end
