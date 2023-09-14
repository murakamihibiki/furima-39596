# README

# user テーブル

| Column             | Type   | Options                              |
| ------------------ | ------ | ------------------------------------ |
| email              | string | null: false, unique constraint: true |
| encrypted_password | string | null: false                          |
| name               | string | null: false                          |
| profile            | text   | null: false                          |