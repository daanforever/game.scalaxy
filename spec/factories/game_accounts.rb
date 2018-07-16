FactoryBot.define do
  factory :game_account, class: 'Game::Account' do
    user nil
    balance 1
  end
end
