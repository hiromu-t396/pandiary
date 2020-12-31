# アプリケーション概要

---

## パン屋の情報共有アプリです。訪れたパン屋の情報を記録し共有することができる。

# アプリケーションの機能一覧

---

- 新規登録機能
- ログイン機能(devise)
- ログアウト機能
- 投稿機能(mini_magick)
- 投稿削除機能
- 投稿編集機能
- いいね機能
- 店の評価機能
- 投稿へのコメント機能
- タグ付機能
- 他アカウントのフォロー
- DM機能
- 通知機能
- グループ作成・参加機能

# 使用技術

---

- HTML/CSS
- JavaScript(jQuery)
- ruby 2.6.5
- Rails 6.0.3.4
- AWS (EC2, RDS for MySQL, S3, VPC, Route53, ALB, ACM)
- Docker/docker-compose
- CircleCI (CI/CD)
- Nginx, Unicorn
- RSpec
- Git, GitHub
- Rubocop

# pan_diary の ER 図

---

## users テーブル

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| email              | string | unique: true |
| password           | string | null: false  |

### Association

- has_many :relationships
- has_many :diarys
- has_many :likes
- has_many :comments
- has_one  :profile

## profiles テーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| name      | string     | null: false       |
| liveplace | integer    |                   |
| introduce | text       | null: false       |
| user      | references | foreign_key: true |

# diarys テーブル

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| name_and_price | string     |                   |
| comment        | text       |                   |
| tag_list       | integer    |                   |
| rate           | float      | null: failse      |
| user_id        | references | foreign_key: true |
| bakery_id      | references | foreign_key: true |
| bakery_name    | references | foreign_key: true |

### Association
- has_many :taggings
- has_many :likes
- has_many :comments
- belongs_to :user
- belongs_to :bakery

# comments テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| body   | string     | null: false       |
| user   | references | foreign_key: true |
| item   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :diary

# likes テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |
| item   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :diary

# relationships テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| follower | integer    | null: false       |
| follow   | integer    | foreign_key: true |
| user     | references | foreign_key: true |

### Association

- belongs_to :user

# bakerys テーブル

| Column    | Type    | Options           |
| --------- | ------- | ----------------- |
| name      | string  | null: false       |
| address   | string  |                   |
| tell      | string  |                   |
| monday    | integer |                   |
| tuesday   | integer |                   |
| wednesday | integer |                   |
| thursday  | integer |                   |
| friday    | integer |                   |
| saturday  | integer |                   |
| sunday    | integer |                   |
| parking   | integer | foreign_key: true |
| web_site  | string  | foreign_key: true |
| instagram | string  | foreign_key: true |
| twitter   | string  | foreign_key: true |

### Association

- has_many :diary