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
  belongs_to :account

  def run(sandbox:)
    sandbox.run(code)
  end

end
