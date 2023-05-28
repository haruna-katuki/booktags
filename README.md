# README

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :books
- has_many :likes
- has_one :profile

## books テーブル

| Column       | Type       | Options                        |
|--------------|------------|--------------------------------|
| title        | string     | null: false                    |
| author       | string     | null: false                    |
| translator   | string     |                                |
| publisher    | string     |                                |
| publish_year | string     |                                |
| total_page   | integer    |                                |
| start_date   | date       |                                |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :posts

## posts テーブル

| Column       | Type       | Options                        |
|--------------|------------|--------------------------------|
| memo         | text       | null: false                    |
| page         | integer    |                                |
| hidden_check | boolean    |                                |
| book         | references | null: false, foreign_key: true |

### Association

- belongs_to :book
- has_many :likes

## profiles テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| favorite_genre   | string     |                                |
| favorite_book1   | string     |                                |
| favorite_book2   | string     |                                |
| favorite_book3   | string     |                                |
| favorite_author1 | string     |                                |
| favorite_author2 | string     |                                |
| favorite_author3 | string     |                                |
| birth_date       | date       |                                |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## likesテーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post