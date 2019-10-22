class Ywt < ApplicationRecord
  belongs_to(:user)

  validates(:y, length: { maximum: 250 }, presence: true)
  validates(:w, length: { maximum: 250 }, presence: true)
  validates(:t, length: { maximum: 250 }, presence: true)
end
