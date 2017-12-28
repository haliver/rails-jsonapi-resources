FactoryBot.define do
  factory :review do
    sequence(:user_id, &:to_s)
    comment '真実はいつも一つ！！'
  end
end
