class Game::State

  def initialize(user:)
    @account = user.account
  end

  def account
    Sandbox::Account.new(@account)
  end

  def units
    @account.units.map(&:id)
  end
end
