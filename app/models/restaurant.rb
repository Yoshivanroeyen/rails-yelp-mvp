class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: ["belgian","chinese", "italian","japanese","french"], allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true




end
