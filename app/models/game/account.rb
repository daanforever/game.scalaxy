class Game::Account < ApplicationRecord
  belongs_to :user
  has_many :units, class_name: 'Game::Unit'
end
