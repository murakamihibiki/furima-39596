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

