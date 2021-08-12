# README

## admins テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| key_code | string | null:false  |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## users テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| age      | integer |             |
| email    | string  | null:false  |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

### Association


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| admin   | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association