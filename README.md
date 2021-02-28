# README

# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |


## prototypes テーブル

| Column    | Type       | Options                        |
| ------    | ---------- | ------------------------------ |
| title     | string     | null: false                    |
| catchcopy | text       | null: false                    |
| concept   | text       | null: false                    |
| user      | references |                                |



## comments テーブル

| Column    | Type       | Options                        |
| -------   | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false                    |
| prototupe | references | null: false                    |