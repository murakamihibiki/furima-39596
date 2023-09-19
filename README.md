# README

# users テーブル

| Column             | Type   | Options                              |
| ------------------ | ------ | ------------------------------------ |
| nickname           | string | null:false    |
| email              | string | null:false unique:true   |
| encrypted_password | string | null:false    |
| last_name          | string | null:false                           |
| first_name         | string | null:false                           |
| last_name_kana     | string | null:false                           |
| first_name_kana    | string | null:false                           |
| date_of_birth      | date   | null:false                           |

 - has many :items
 - has many :orders
 
  # items テーブル

| column             | Type    | Options                              |
| ------------------ | ------  | ------------------------------------ |
| user               | string  | null:false  foreign_key: true        |
| name               | string  | null:false                           |
| description        | text    | null:false                           |
| category_id        | integer    | null:false                           |
| item_status_id     | integer    | null:false                           |
| shipping_cost_id   | integer    | null:false                           |
| prefecture_id      | integer    | nill:false                           |
| shipping_date_id   | integer    | null:false                           |
| prise              |  | null:false                           |

- has one :orders
- belong_to :user

# orders テーブル

| column             | Type        | Options                              |
| ------------------ | ----------- | ------------------------------------ |
| user               | references  | null:false foreign_key: true         |
| item               | references  | null:false foreign_key: true         |

- belong_to :user
- belong_to :item
- has_one :payments

# payments テーブル

| column             | Type         | Options                              |
| ------------------ | ------------ | ------------------------------------ |
| order             | references   | null:false foreign_key: true         |
| postcode           | string       | null:false                           |
| prefecture_id      | integer      | null:false                           |
| town               | string       | null:false                           |
| street address     | string       | null:false                           |
| building           | string       |                                      |
| phone_number       | string       | null:false                        |

- belong_to :order