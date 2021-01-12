class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '恋愛' },
    { id: 3, name: '青春' },
    { id: 4, name: 'ミステリー' },
    { id: 5, name: 'ホラー' },
    { id: 6, name: 'ライトノベル' },
    { id: 7, name: 'ファンタジー' },
    { id: 8, name: 'SF' },
    { id: 9, name: '哲学' },
    { id: 10, name: '自己啓発' },
    { id: 11, name: '純文学' },
    { id: 12, name: '時代・歴史' },
    { id: 13, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :books
end
