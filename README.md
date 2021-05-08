## User テーブル

|  Column            |  Type               |  Options          |
| ------------------ | ------------------- | ----------------- |
| name               | string              | null: false       |
| email              | string              | null: false       |
| password           | string              | null: false       |

### Association
- has_many :pets

## Pet テーブル

|  Column            |  Type            |  Options                         |
| ------------------ | ---------------- | -------------------------------- |
| name               | string           | null: false                      |
| sex                | string           | null: false                      |
| type               | string           | null: false                      |
| birthday           | date             | null: false                      |
| color              | string           | null: false                      |
| hospital           | text             | null: false                      |
| medical_history    | text             | null: false                      |
| medicine           | text             | null: false                      |
| allergies          | text             | null: false                      |
| walk_time          | string           |                                  |
| trimming           | string           |                                  |
| character          | text             |                                  |
| type_of_foods      | string           |                                  |
| number_of_meals    | string           |                                  |
| amount_of_food     | string           |                                  |
| image              | references       | null: false, foreign_key: true   |
| user               | references       | null: false, foreign_key: true   |

### Association
- belongs_to :user
- belongs_to :diary
- belongs_to :grow

## Diary テーブル

|  Column            |  Type               |  Options                        |
| ------------------ | ------------------- | ------------------------------- |
| date               | date                | null: false                     |
| text               | text                | null: false                     |
| image              | references          | null: false, foreign_key: true  |

### Association
- belongs_to :pet

## Grow テーブル

|  Column            |  Type               |  Options           |
| ------------------ | ------------------- | ------------------ |
| height             | string              | null: false        |
| weight             | string              | null: false        |
### Association
- belongs_to :pet
