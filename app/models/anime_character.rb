class AnimeCharacter < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1 }
  validates :age, presence: true
  validates :birthday, presence: true, length: { minimum: 5 }
  validates :gender, presence: true, length: { minimum: 1 }
  validates :show, presence: true, length: { minimum: 1 }
  validates :image_link, presence: true, length: { minimum: 3 }
end
