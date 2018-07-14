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

  def run
    sandbox   = Shikashi::Sandbox.new
  	priv      = Shikashi::Privileges.new
    priv.allow_method :new

    Integer.instance_methods.each{ |m| priv.allow_method m }

  	sandbox.run(priv, code)
    sandbox.base_namespace::Say.new
  end
end
