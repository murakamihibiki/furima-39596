# README

# users テーブル

| Column             | Type   | Options                              |
| ------------------ | ------ | ------------------------------------ |
| nickname           | string | null:false unique constraint: true   |
| email              | string | null:false unique constraint: true   |
| encrypted_password | string | null:false unique constraint: true   |
| last_name          | string | null:false                           |
| first_name         | string | null:false                           |
| last_name_kana     | string | null:false                           |
| first_name_kana    | string | null:false                           |
| birth_date      | date   | null:false                           |

 - has_many :items
 - has_many :orders

  # items テーブル

| column             | Type    | Options                              |
| ------------------ | ------  | ------------------------------------ |
| user               | references | null:false  foreign_key: true        |
| name               | string  | null:false                           |
| description        | text    | null:false                           |
| category_id        | integer    | null:false                           |
| item_status_id     | integer    | null:false                           |
| shipping_cost_id   | integer    | null:false                           |
| prefecture_id      | integer    | null:false                           |
| shipping_date_id   | integer    | null:false                           |
|      cost         | integer  | null:false                           |

- has_one :order
- belongs_to :user

# orders テーブル

| column             | Type        | Options                              |
| ------------------ | ----------- | ------------------------------------ |
| user               | references  | null:false foreign_key: true         |
| item               | references  | null:false foreign_key: true         |

- belongs_to :user
- belongs_to :item
- has_one :payment

# payments テーブル

| column             | Type         | Options                              |
| ------------------ | ------------ | ------------------------------------ |
| order             | references   | null:false foreign_key: true         |
| postcode           | string       | null:false                           |
| prefecture_id      | integer      | null:false                           |
| town               | string       | null:false                           |
| street_address     | string       | null:false                           |
| building           | string       |                                      |
| phone_number       | string       | null:false                        |

- belongs_to :order