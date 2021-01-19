FactoryBot.define do
  factory :comment do
    association :user
    association :book

    text {'テスト投稿'}
  end
end
