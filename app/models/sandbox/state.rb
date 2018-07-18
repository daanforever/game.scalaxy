module Sandbox
  class State
    def initialize(account:)
      @account = account
    end

    def turn
      {
        balance: @account.balance,
        units: Units.new(@account).alive
      }
    end
  end
end
