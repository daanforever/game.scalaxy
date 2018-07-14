# == Schema Information
#
# Table name: sources
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Source < ApplicationRecord
  belongs_to :user

  attr_accessor :sandbox, :privileges

  def sandbox
    @sandbox ||= Shikashi::Sandbox.new
  end

  def privileges
    @privileges ||= Privileges.new
  end

  def run
  	sandbox.run(privileges.turn, code)
    sandbox.base_namespace::Logic.new.turn Game::Turn.new(user)
  end
end
