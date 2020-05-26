# フィヨルドトーーク！

平等にトークテーマを提案できるアプリ。

## インストール

postgresqlでuuidを使えるようにしてください。

```
$ psql -d postgres -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'
```

```
$ bin/setup
```
