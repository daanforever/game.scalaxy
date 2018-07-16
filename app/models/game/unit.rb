class Game::Unit < ApplicationRecord
  belongs_to :account, class_name: 'Game::Account'
end
