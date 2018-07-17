class Game::Account < ApplicationRecord
  belongs_to :user
  has_one :source
  has_many :units
end
