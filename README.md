# アプリケーション名
My sweeties

# アプリケーション概要
* ぺっとのメモ機能
* 日記投稿機能

# URL
https://rurukota.herokuapp.com/

# テスト用アカウント
* アドレス: a@a
* パスワード: aaaaaa

# 利用方法
このアプリケーションはご自身がかっているペットの情報を管理するためのアプリケーションです。ペットの情報が一目でわかるだけでなくメモ欄にお気に入りのおやつを記録したり、次回のトリミングの日程をメモしたり日常使いもできます。また、日記投稿機能でペットとの素敵な思い出を、記憶だけでなく、写真とともにデータで残すことができます。ログインしている人にしか閲覧ができないので自由に安心して投稿ができます。アカウント情報を共有すると、離れて暮らしている人にも日常を共有できます。

# 目指した課題解決
* 記憶だけでは忘れてしまうことも、写真とともに記録することでしっかりと思い出せる。忘れん坊さんの作った、忘れん坊さんのためのアプリケーションです。

# 実装した機能についての画像やGIFおよびその説明
* トップページ         https://gyazo.com/e1c01c3e80050763da3deb797974a7ba
* 日記機能            https://gyazo.com/d115f4fb8921925785acff1148ecb1e1
* 詳細機能            https://gyazo.com/1db189ffc529d690f8a6b6d315c617d0
* ユーザー登録機能     https://gyazo.com/a17733218bc0901bdd0ce71480ba62ff

# 実装予定の機能
身長体重の記録をグラフで表す機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8fc1a4d21126d328ec72e67c24b87f03.png)](https://gyazo.com/8fc1a4d21126d328ec72e67c24b87f03)

# ローカルでの保存方法






## User テーブル

|  Column            |  Type               |  Options          |
| ------------------ | ------------------- | ----------------- |
| name               | string              | null: false       |
| email              | string              | null: false       |
| password           | string              | null: false       |

### Association
- has_many :pets
- has_many :diaries

## Pet テーブル

|  Column            |  Type            |  Options                         |
| ------------------ | ---------------- | -------------------------------- |
| name               | string           | null: false                      |

### Association
- belongs_to :user
- belongs_to :profile
- belongs_to :diary
- belongs_to :grow

## Diary テーブル

|  Column            |  Type               |  Options                        |
| ------------------ | ------------------- | ------------------------------- |
| date               | date                | null: false                     |
| text               | text                | null: false                     |
| image              | references          | null: false, foreign_key: true  |

### Association
- belongs_to :user

## Grow テーブル

|  Column            |  Type               |  Options           |
| ------------------ | ------------------- | ------------------ |
| height             | string              | null: false        |
| weight             | string              | null: false        |

### Association
- belongs_to :pet

## Profile テーブル
|  Column            |  Type            |  Options              |
| ------------------ | ---------------- | --------------------- |
| name               | string           | null: false           |
| sex                | string           | null: false           |
| type               | string           | null: false           |
| birthday           | date             | null: false           |
| color              | string           | null: false           |
| memo               | text             |                       |
| hospital           | text             | null: false           |
| medical_history    | text             | null: false           |
| medicine           | text             | null: false           |
| allergies          | text             | null: false           |
| walk_time          | string           |                       |
| character          | text             |                       |
| type_of_foods      | string           |                       |
| number_of_meals    | string           |                       |
| amount_of_food     | string           |                       |

### Association
- belongs_to :pet