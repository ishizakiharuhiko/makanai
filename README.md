# アプリケーション名
まかない.com

# アプリケーション概要
料理人のまかないレシピ投稿サイト

# URL

# 制作背景
1番の課題は「コロナ禍で飲食店がアピールする場がない」ということです。
コロナの影響でYoutubeにレシピを投稿する飲食店も増えましたが、撮影や編集に時間がかかりますし、何より機材を揃えるのにお金がかかりハードルが高いです。

アパレルにいた時には、コロナでお客様が少ない時にはコーディネートを撮影して自社ECやwearに投稿していましたが、その手軽なアピールの場を飲食にも落とし込めないかと考え、このアプリを作成しました。

また、cookpadや楽天レシピは投稿数は多いですが、アマチュアでも投稿できるので当たり外れが大きく、レシピ全体の質が低くなってしまいます。

味の素やキッコーマンの公式サイトに掲載されているレシピは、質は保証されますが定番のレシピや、自社製品を使ったレシピに限られるので、バラエティ性に乏しくなってしまいます。


このアプリケーションは上記の2種類の有名なレシピサイトとも大きく差別化できているので、新たな需要が見込めます。


# DEMO

# 工夫したポイント

# 使用技術
Ruby,RubyonRails,mySQL,Javascript,GitHub,heroku,AWS

# 課題や今後実装したい機能

# データベース設計
## restaurants table

| Column        | Type       | Options           |
|---------------|------------|-------------------|
| name          | string     | null: false       |
| text          | text       | null: false       |
| category_id   | integer    | null: false       |
| prefecture_id | integer    | null: false       |
| city          | string     | null: false       |
| street        | siring     | null: false       |
| building      | string     |                   |

### Association

- has_many :users

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| name               | string              | null: false               |
| text               | text                | null: false               |
| restaurant_id      | references          | foreign_key: true         |

### Association

- belongs_to :restaurant
- has_many :recipes

## recipes table

| Column             | Type          | Options           |
|--------------------|---------------|-------------------|
| title              | string        | null: false       |
| material           | text          | null: false       |
| how_to_make        | text          | null: false       |
| point              | text          | null: false       |
| user_id            | references    | foreign_key: true |

### Association

- belongs_to :user