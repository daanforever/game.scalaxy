module Sandbox
  class Base

    def initialize(account:)
      @account = account
      @sandbox ||= Shikashi::Sandbox.new("::Sandbox_#{@account.id}")
    end

    def privileges
      @privileges ||= Sandbox::Privileges.new
    end

    def turn
      @run   ||= run
      @units ||= Sandbox::Unit.new(@account).alive
      logic.turn(state: Sandbox::State.new(@account, units).to_json)
    end

    def run
      @sandbox.run(privileges.turn, @account.source.code)
      true
    end

    def namespace
      @sandbox.base_namespace
    end

  end # class
end # module
