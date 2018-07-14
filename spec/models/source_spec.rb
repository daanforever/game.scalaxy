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

require 'rails_helper'

RSpec.describe Source, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
