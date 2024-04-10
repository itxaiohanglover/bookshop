# bookshop 数据库文档
### 基础信息
| 数据库名称 | 版本 | 字符集 | 排序规则 |
| ---- | ---- | ---- | ---- |
| bookshop | 8.0.28 | utf8mb4 | utf8mb4_0900_ai_ci |
### 数据库表目录
| 序号 | 表名 | 描述 |
| ---- | ---- | ---- |
| 1 | sys_book | sys_book |
| 2 | sys_carousel | sys_carousel |
| 3 | sys_cart | sys_cart |
| 4 | sys_file | sys_file |
| 5 | sys_inventory | sys_inventory |
| 6 | sys_selldata | sys_selldata |
| 7 | sys_user | sys_user |
| 8 | test_sys_shop | test_sys_shop |
### 数据库表信息
#### sys_book(sys_book)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| author | varchar(255) |  | YES |  |  |
| bookname | varchar(255) |  | YES |  |  |
| category | varchar(255) |  | YES |  |  |
| coverurl | varchar(255) |  | YES |  |  |
| id | int | PRI | NO |  |  |
| introduction | varchar(255) |  | YES |  |  |
| press | varchar(255) |  | YES |  |  |

#### sys_carousel(sys_carousel)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| admin_id | int |  | YES |  |  |
| enable | int |  | YES |  |  |
| id | int | PRI | NO |  |  |
| image_info | varchar(255) |  | YES |  |  |
| imageurl | varchar(255) |  | YES |  |  |

#### sys_cart(sys_cart)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| address | varchar(255) |  | YES |  |  |
| buy_id | int |  | YES |  |  |
| connection | varchar(255) |  | YES |  |  |
| count | int |  | YES |  |  |
| id | int | PRI | NO |  |  |
| inventory_id | int |  | YES |  |  |
| name | varchar(255) |  | YES |  |  |

#### sys_file(sys_file)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| enable | bit(1) |  | YES |  |  |
| filename | varchar(255) |  | YES |  |  |
| filesize | int unsigned |  | YES |  |  |
| filetype | varchar(255) |  | YES |  |  |
| fileurl | varchar(255) |  | YES |  |  |
| id | int | PRI | NO |  |  |
| is_delete | bit(1) |  | YES |  |  |
| md5 | varchar(255) |  | YES |  |  |

#### sys_inventory(sys_inventory)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| book_id | int |  | YES |  |  |
| discount | double |  | YES |  |  |
| enable | int |  | YES |  |  |
| id | int | PRI | NO |  |  |
| price | double |  | YES |  |  |
| shop_id | int |  | YES |  |  |
| stock | int |  | YES |  |  |

#### sys_selldata(sys_selldata)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| address | varchar(255) |  | YES |  |  |
| book_id | int |  | YES |  |  |
| buy_id | int |  | YES |  |  |
| connection | varchar(255) |  | YES |  |  |
| count | int |  | YES |  |  |
| create_time | datetime |  | YES |  |  |
| express_id | varchar(255) |  | YES |  |  |
| id | int | PRI | NO |  |  |
| is_pay | int |  | YES |  |  |
| is_sent | int |  | YES |  |  |
| name | varchar(255) |  | YES |  |  |
| price | double |  | YES |  |  |
| shop_id | int |  | YES |  |  |

#### sys_user(sys_user)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| address | varchar(255) |  | YES |  |  |
| avatarurl | varchar(255) |  | YES |  |  |
| email | varchar(255) |  | YES |  |  |
| id | int | PRI | NO |  |  |
| nickname | varchar(255) |  | YES |  |  |
| password | varchar(255) |  | YES |  |  |
| phone | varchar(255) |  | YES |  |  |
| role | int |  | YES |  |  |
| username | varchar(255) |  | YES |  |  |

#### test_sys_shop(test_sys_shop)
| 列名 | 类型 | KEY | 可否为空 | 默认值 | 注释 |
| ---- | ---- | ---- | ---- | ---- | ----  |
| address | varchar(255) |  | YES |  |  |
| email | varchar(255) |  | YES |  |  |
| id | int | PRI | NO |  |  |
| password | varchar(255) |  | YES |  |  |
| phone | varchar(255) |  | YES |  |  |
| pictureurl | varchar(255) |  | YES |  |  |
| shopname | varchar(255) |  | YES |  |  |
| username | varchar(255) |  | YES |  |  |
