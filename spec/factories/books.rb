FactoryBot.define do
  factory :book do
    association :user

    name { 'テスト小説' }
    text { 'テスト投稿' }
    genre_id { 2 }

    after(:build) do |book|
      book.image.attach(io: File.open('public/images/hero.jpg'), filename: 'hero.jpg')
    end
  end
end
