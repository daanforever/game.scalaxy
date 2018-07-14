# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
  belongs_to :user
end
