class Game::Turn
  def initialize(user: user)
    @user = user
  end

  def account
    @account ||= Game::Account.new(user: user)
  end

  def units
    @units ||= account.units
  end

end
