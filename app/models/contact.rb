class Contact < ApplicationRecord
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: { maximum: 50 }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: { maximum: 50 }
  validates :telephone, presence: true, numericality: { only_integer: true }, length: {in: 10..15}, uniqueness: true
end
