FactoryGirl.define do
  factory :review do
    sequence(:user_id) { |n| "#{n}" }
    comment '真実はいつも一つ！！'
  end
end
