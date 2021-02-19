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
本好きな人たちが新たに読みたい本を見つけたいけど何かないかな？  
好きな作品に対する思いを発信して、意見交換したいな！  
そういった時に気軽に使えるツールを作りたいと思い作成しました。  
自分発信の投稿やコメント・他ユーザーのコメント閲覧を行えるため、情報収集や意見交換を行えるツールになっています♪

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
[![Image from Gyazo](https://i.gyazo.com/2f4f1d5e24190b47da91ab06b414e387.gif)](https://gyazo.com/2f4f1d5e24190b47da91ab06b414e387)  
・ログイン機能  
ログインページより、登録済のアドレス、パスワードを入力するとログインできます。  
新規登録ページより、各情報を入力後、登録するボタンをクリックします。  
登録したユーザーとしてログインし、トップページに遷移されます。  
[![Image from Gyazo](https://i.gyazo.com/684760628b4f258b302050896484934e.gif)](https://gyazo.com/684760628b4f258b302050896484934e)  
[![Image from Gyazo](https://i.gyazo.com/a040f62417e7d162d62c7eda02672631.gif)](https://gyazo.com/a040f62417e7d162d62c7eda02672631)  

・一覧表示機能  
トップページにアクセスすると、これまで投稿された本が表示されます。  
[![Image from Gyazo](https://i.gyazo.com/243e3caf59603b778134f0e3eedf2891.gif)](https://gyazo.com/243e3caf59603b778134f0e3eedf2891)  
・投稿機能  
トップページの投稿するボタンを押すと、投稿情報入力画面に遷移します。  
入力後、投稿するボタンをクリックすると投稿されトップページに表示されます。  
[![Image from Gyazo](https://i.gyazo.com/0024589c574d295c1b9e911f5ce3028f.gif)](https://gyazo.com/0024589c574d295c1b9e911f5ce3028f)  
<a href="https://gyazo.com/bfbc3ff704f7baf1c0e0997fc219b08a"><img src="https://i.gyazo.com/bfbc3ff704f7baf1c0e0997fc219b08a.gif" alt="Image from Gyazo" width="1000"/></a>  

・詳細表示機能  
投稿されている本をクリックすると、クリックした本の詳細ページに遷移されます。  
[![Image from Gyazo](https://i.gyazo.com/0ff2e1da3314c2c9c63f153cd2acb9dc.gif)](https://gyazo.com/0ff2e1da3314c2c9c63f153cd2acb9dc)  

・編集機能  
自身が投稿した本であれば、詳細ページに編集ボタンが表示されます。  
編集ボタンを押すと、投稿情報の編集画面に遷移します。  
編集ページにて情報入力後、変更するボタンをクリックすると、更新された内容が詳細ページに表示されます。  
[![Image from Gyazo](https://i.gyazo.com/9de680d82193a7145519390cbc76bfad.gif)](https://gyazo.com/9de680d82193a7145519390cbc76bfad)  
[![Image from Gyazo](https://i.gyazo.com/1941379ca035a1c17ebaf4d255351e7e.gif)](https://gyazo.com/1941379ca035a1c17ebaf4d255351e7e)  
・削除機能  
自身が投稿した本であれば、詳細ページに削除ボタンが表示されます。  
削除ボタンを押すと、本当に削除しますかと画面が出るので、OKをクリックするとトップ画面に戻り、削除が完了します。  
[![Image from Gyazo](https://i.gyazo.com/e16d5fd78f65ff2f2a3cee4d5a40229d.gif)](https://gyazo.com/e16d5fd78f65ff2f2a3cee4d5a40229d)  

・コメント機能  
ログイン状態のみ利用できます。  
詳細ページの中央にコメント入力フォームがあるので、入力します。  
入力後、コメントするボタンをクリックして送信されます。  
送信後のコメントは、画面下に表示され、新たなコメントが送信されると下に追加されていきます。  
[![Image from Gyazo](https://i.gyazo.com/0e69b556d4695955567b403b3ef51dfa.gif)](https://gyazo.com/0e69b556d4695955567b403b3ef51dfa)  
[![Image from Gyazo](https://i.gyazo.com/a7f7b678992efe76fb23e06e06dd2055.gif)](https://gyazo.com/a7f7b678992efe76fb23e06e06dd2055)  
[![Image from Gyazo](https://i.gyazo.com/cc270681e2c68c2cbd726a3fc8eb317a.gif)](https://gyazo.com/cc270681e2c68c2cbd726a3fc8eb317a)  
・ジャンル検索機能  
トップページ右上にジャンル検索ができるボタンがあります。  
プルダウンで表示されるジャンルを選択し、検索ボタンをクリック。  
選択したジャンルの投稿一覧が表示されます。  
[![Image from Gyazo](https://i.gyazo.com/06388f4853cc53935e3c1da7a3ee231e.gif)](https://gyazo.com/06388f4853cc53935e3c1da7a3ee231e)  

# 実装予定の機能
・ユーザーページ表示機能(ユーザー毎の投稿一覧が見れる)  
・コメント数ランキング表示機能  
・コメント数表示機能(投稿一覧画面にて)  

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/fb1ecc5d09973b8f63fed1c9d85e2397.png)](https://gyazo.com/fb1ecc5d09973b8f63fed1c9d85e2397)  

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
