module Game
  class Unit
    attr_accessor :mass
    def initialize
      @mass = 0
    end

    def turn
      "turn by #{name}"
    end

    def name
      self.class.name
    end
  end
end
