## usersテーブル

| Column   | Type   | Options                   |
| -------- | ------ | ------------------------- |
| nickname | string | null: false               |
| email    | string | null: false, unique: true |
| password | string | null: false               |

### Association
- has_many :books
- has_many :comments

## booksテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| text     | text       | null: false                    |
| genre_id | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one_attached :image

## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| book   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :book

## 以下アプリ説明↓

# アプリケーション名 
 Book Talk

# アプリケーション概要 
本のアプリケーションを作成しました。  
ユーザーを登録すると、本の投稿、コメントができるようになります。  
自身が投稿した本は、編集と削除を行うことができます。  
投稿された本は、ログイン状態であればコメントを行うことができます。  
コメントは、自身が投稿したものに限り削除することもできます。

# URL
https://book-talk-30334.herokuapp.com/

# テスト用アカウント
アドレス：yuki@com  
パスワード：y11111

# Basic認証のID,パスワード
ID：yukiyu  
パスワード：1479

# 利用方法 
・新規登録ボタンより、ユーザー登録が行えます。  
・ログインボタンよりログインが行えます。  
・投稿したい場合、トップページの投稿ボタンより投稿が行えます。(ログイン状態のユーザーのみ利用可能です。)  
・トップページにて、投稿された本が一覧で表示されます。  
・見たい本をクリックすると、詳細ページを確認できます。  
・詳細ページでは、ユーザーが投稿者本人の場合、編集ボタンより投稿内容の変更、削除ボタンより投稿情報の削除を行うことができます。  
・ログイン状態のユーザーのみ、詳細ページにてコメントを行うことができます。  
・コメントは自身が投稿したコメントのみ削除することができます。  
・トップページのジャンル検索ボタンより、プルダウンでジャンルを選択し検索をクリックすると、選択されたジャンルの本が一覧表示されます。  

# 目指した課題解決 
次読みたい本探しに迷っている人たちが気軽に情報収集ができて、読みたい本を見つけることができるツールを作りたいと思い作成しました。

# 洗い出した要件
・Basic認証  
・ログイン機能  
・一覧表示機能  
・投稿機能  
・詳細表示機能  
・編集機能  
・削除機能  
・コメント機能  
・ジャンル検索機能  

# 実装した機能についてのGIFと説明
・Basic認証  
URLアクセス時、IDとパスワードを求められます。  
正しいIDとパスワードを入力後、トップページに遷移します。
https://gyazo.com/4280cc25c89db2f20d495db07c8e38ab  
・ログイン機能  
ログインページより、登録済のアドレス、パスワードを入力するとログインできます。  
新規登録ページより、各情報を入力後、登録するボタンをクリックします。  
登録したユーザーとしてログインし、トップページに遷移されます。  
https://gyazo.com/57ec608abcb698806afa4bacf21cf3cf  
https://gyazo.com/96be9fc75bf1f0151a53057443e82932  
・一覧表示機能  
トップページにアクセスすると、これまで投稿された本が表示されます。  
https://gyazo.com/aa3263cb85ec5acf6cfc67de36493dc0  
・投稿機能  
トップページの投稿するボタンを押すと、投稿情報入力画面に遷移します。  
入力後、投稿するボタンをクリックすると投稿されトップページに表示されます。  
https://gyazo.com/28df50c4acb1a04262ee005bb3c19e7e  
https://gyazo.com/b01825b1e52b235ad6e3a092c867d62b  
・詳細表示機能  
投稿されている本をクリックすると、クリックした本の詳細ページに遷移されます。  
https://gyazo.com/184dccd7b4f9e2514c7f009830a4b49a  
・編集機能  
自身が投稿した本であれば、詳細ページに編集ボタンが表示されます。  
編集ボタンを押すと、投稿情報の編集画面に遷移します。  
編集ページにて情報入力後、変更するボタンをクリックすると、更新された内容が詳細ページに表示されます。  
https://gyazo.com/f30699b90593ad57a28e74fb2fc0b417  
https://gyazo.com/474380bc7c14c4b3ed5b869da6d9394a  
・削除機能  
自身が投稿した本であれば、詳細ページに削除ボタンが表示されます。  
削除ボタンを押すと、本当に削除しますかと画面が出るので、OKをクリックするとトップ画面に戻り、削除が完了します。  
https://gyazo.com/add782ac8cee061673f00b7874ac8639  
・コメント機能  
ログイン状態のみ利用できます。  
詳細ページの中央にコメント入力フォームがあるので、入力します。  
入力後、コメントするボタンをクリックして送信されます。  
送信後のコメントは、画面下に表示され、新たなコメントが送信されると下に追加されていきます。  
https://gyazo.com/372a99e966e59315811cf1d7539a72bd  
https://gyazo.com/8b47403a3d0fda9ff5095508804bf2c6  
https://gyazo.com/2d1ae805e1944f46c971cc27424817c9  
・ジャンル検索機能  
トップページ右上にジャンル検索ができるボタンがあります。  
プルダウンで表示されるジャンルを選択し、検索ボタンをクリック。  
選択したジャンルの投稿一覧が表示されます。
https://gyazo.com/28e8e573e37318a5f7448d7dcf3d8aad

# 実装予定の機能
・ユーザーページ表示機能(ユーザー毎の投稿一覧が見れる)  

# データベース設計
https://gyazo.com/5cb14d6176334cd5c8ebc0624dd37e79

# ローカルでの動作方法
ruby-version
```
2.6.5
```
database.yml
```
// 省略
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password:
  socket: /tmp/mysql.sock
// 省略
```
```
% git clone https://github.com/yuki-MIRA/book-talk.git
% cd book-talk
% bundle install
% yarn install
% rails db:create
% rails db:migrate
% rails s
```