# meal_diary

## サイト概要
記録に残しておきたい料理は写真と店名や住所や説明をして記録しておくことができます。
また、ランキングが搭載されており、いいねの数が多いおすすめの商品を確認することができます。

### サイトテーマ
<おすすめの料理を共有しよう>

### テーマを選んだ理由
<美味しい料理を食べても自分一人の情報にしておくことや、お店の情報
を忘れてはもったいないと思い、サイトを作りました。
また、気軽に情報交換の場所になればと考えております。>

### ターゲットユーザ
10代〜40代

### 主な利用シーン
ご飯を食べに行った際

## 設計書

# DB設計

## user テーブル

| Column             | Type     | Options     |
| ------------------ | ------   | ----------- |
| name               | string   | null: false |
| email              | string   | null: false |
| password           | string   | null: false |
| profile_image      | string   | null: false |

## products テーブル

| Column             | Type     | Options     |
| ------------------ | ------   | ----------- |
| user_id            | integer  | null: false |
| genre_id           | integer  | null: false |
| shop_name          | string   | null: false |
| product_image      | string   | null: false |
| description        | text     | null: false |
| menu_name          | string   | null: false |
| address            | string   | null: false |
| time               | datetime | null: false |

## commnts テーブル

| Column             | Type     | Options     |
| ------------------ | ------   | ----------- |
| user_id            | integer  | null: false |
| product_id         | integer  | null: false |
| comment            | text     | null: false |

## genre テーブル

| Column             | Type     | Options     |
| ------------------ | ------   | ----------- |
| genre_name         | string   | null: false |

## favorites テーブル

| Column             | Type     | Options     |
| ------------------ | ------   | ----------- |
| user_id            | integer  | null: false |
| product_id         | integer  | null: false |



## チャレンジ要素一覧
https://docs.google.com/spreadsheets/d/1V_K82IGxj8x-QlkzPk6syIGLDhoC2n0awEX2IK9guAU/edit#gid=0

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- ロゴ作成アプリ  https://www.canva.com/?loginRedirect=%2F%3FupgradeDialog%3DGENERIC_C4W&signupRedirect=%2F%3FupgradeDialog%3DGENERIC_C4W
- フリー素材 https://unsplash.com/
- 外部サービスの画像素材・音声素材を使用した場合は、必ずサービス名とURLを明記してください。
- 使用しない場合は、使用素材の項目をREADMEから削除してください。