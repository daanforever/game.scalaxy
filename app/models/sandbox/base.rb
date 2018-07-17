module Sandbox
  class Base
    def initialize(code:)
      @sandbox ||= Shikashi::Sandbox.new("::Sandbox_#{id}")
    end

    def privileges
      @privileges ||= Sandbox::Privileges.new
    end

    def run(code:)
      @sandbox.run(privileges.turn, code)
    end

    @logic ||= @sandbox.base_namespace::Logic.new
    @logic.run(state: state)

  end
end
