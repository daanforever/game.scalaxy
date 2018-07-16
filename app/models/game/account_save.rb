module Game
  class Account

    def initialize(user: user)
      @user = user
    end

    def balance
      @user.balance
    end

    def assets
      @user.assets
    end

    def units
      @user.assets.units
    end

  end
end
