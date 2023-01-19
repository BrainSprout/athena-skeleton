# `src/entities`

The `src/entities` directory contains all the database model/entity types, regardless of what ORM is being used. If applicable, ORM repository types should also live in this directory. [Crecto](https://github.com/Crecto/crecto) is used by default for models, and `src/config/crecto` exposed both `Repo` and `Query` types which can be used for executing queries.