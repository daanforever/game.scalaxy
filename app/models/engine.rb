class Engine

  def initialize
    @pool = Concurrent::FixedThreadPool.new(5) # 5 threads
  end

  def turn
    Account.find_each do |a|
      sandbox = Sandbox::Base.new(account: a)
      @pool.post do
        sandbox.run
        logic   = sandbox.namespace::Logic.new
        account = Sanitizer.new()
        units   = State::Units.new
        game    = Game.new(account, units)
        logic.turn(game)
      end
    end
  end

end
