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

FactoryBot.define do
  factory :source do
    user nil
    code "MyText"
  end
end
