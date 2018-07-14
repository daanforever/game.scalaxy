class Game::Turn
  def initialize(user)
    @user = user
  end

  def user
    @user
  end

  def balance
    1000
  end
end
