# README

## admins テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| key_code | string | null:false  |

### Association


## users テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| age      | integer |             |
| email    | string  | null:false  |

### Association


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| admin   | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association