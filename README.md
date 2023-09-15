# README

# user テーブル

| Column             | Type   | Options                              |
| ------------------ | ------ | ------------------------------------ |
| nickname           | string | null:false unique constraint: true   |
| email              | string | null:false unique constraint: true   |
| encrypted_password | string | null:false unique constraint: true   |
| last name          | string | null:false                           |
| first name         | string | null:false                           |
| last name_kana     | string | null:false                           |
| first name_kana    | string | null:false                           |
| date of birth      | date   | null:false                           |

 - has many :item
 - has many :order
 
  # item テーブル

| column             | Type    | Options                              |
| ------------------ | ------  | ------------------------------------ |
| user               | string  | null:false  foreign_key: true        |
| name               | string  | null:false                           |
| description        | text    | null:false                           |
| category_id        | date    | null:false                           |
| item_status_id     | date    | null:false                           |
| shipping_cost_id   | date    | null:false                           |
| prefecture_id      | date    | nill:false                           |
| shipping_date_id   | date    | null:false                           |
| prise              | integer | null:false                           |

- has one :order
- belong_to :user

# order テーブル

| column             | Type        | Options                              |
| ------------------ | ----------- | ------------------------------------ |
| user               | references  | null:false foreign_key: true         |
| item               | references  | null:false foreign_key: true         |

- belong_to :user
- belong_to :item
- has_one :payment

# payment テーブル

| column             | Type         | Options                              |
| ------------------ | ------------ | ------------------------------------ |
| orders             | references   | null:false foreign_key: true         |
| postcode           | string       | null:false                           |
| prefecture_id      | integer      | null:false                           |
| town               | string       | null:false                           |
| street address     | string       | null:false                           |
| building           | string       |                                      |
| phone_number       | string       | null:false                        |

- belong_to :order