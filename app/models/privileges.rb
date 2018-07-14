class Privileges

  def turn
    privileges = Shikashi::Privileges.new
    privileges.allow_method :to_s
    privileges.allow_class_definitions
    privileges.instances_of(::Class).allow :new
    privileges.instances_of(::Integer).allow_all
    privileges.allow_const_read 'Game'
    privileges.instances_of(Game::Turn).allow_all
    privileges.instances_of(Game::Starship).allow :turn
    privileges.instances_of(User).allow :messages
  end

end
