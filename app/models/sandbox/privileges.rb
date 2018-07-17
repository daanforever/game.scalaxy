module Sandbox
  class Privileges
    def turn
      privileges = Shikashi::Privileges.new
      privileges.allow_method :to_s
      privileges.allow_class_definitions
      privileges.instances_of(Class).allow :new
      privileges.instances_of(Integer).allow_all
      privileges.instances_of(OpenStruct).allow_all

      privileges.allow_const_read 'Game'
      privileges.instances_of(Game::State).allow_all
      privileges.instances_of(Game::Account).allow(:balance)
      privileges.instances_of(Game::Unit).allow(:id)
    end
  end
end
