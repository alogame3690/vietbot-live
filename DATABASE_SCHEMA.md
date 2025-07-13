# VietBot Database Schema - 2025-07-13 12:55:01

## Database Info
```sql
                                         version                                          
------------------------------------------------------------------------------------------
 PostgreSQL 15.13 on x86_64-pc-linux-musl, compiled by gcc (Alpine 14.2.0) 14.2.0, 64-bit
(1 row)
 db_size  
----------
 10433327
(1 row)
```

## Tables Overview
```sql
                                               List of relations
 Schema |            Name            | Type  |  Owner  | Persistence | Access method |    Size    | Description 
--------+----------------------------+-------+---------+-------------+---------------+------------+-------------
 public | analytics                  | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | annotation_tag_entity      | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | auth_identity              | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | auth_provider_sync_history | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | conversations              | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | credentials_entity         | table | vietbot | permanent   | heap          | 16 kB      | 
 public | customers                  | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | escalations                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | event_destinations         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_annotation_tags  | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | execution_annotations      | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_data             | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_entity           | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_metadata         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | faq                        | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | installed_nodes            | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | installed_packages         | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | intents                    | table | vietbot | permanent   | heap          | 16 kB      | 
 public | invalid_auth_token         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | message_queue              | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | migrations                 | table | vietbot | permanent   | heap          | 16 kB      | 
 public | order_items                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | orders                     | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | processed_data             | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | products                   | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | project                    | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | project_relation           | table | vietbot | permanent   | heap          | 16 kB      | 
 public | role                       | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | sessions                   | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | settings                   | table | vietbot | permanent   | heap          | 16 kB      | 
 public | shared_credentials         | table | vietbot | permanent   | heap          | 16 kB      | 
 public | shared_workflow            | table | vietbot | permanent   | heap          | 16 kB      | 
 public | system_config              | table | vietbot | permanent   | heap          | 16 kB      | 
 public | tag_entity                 | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | test_definition            | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | test_metric                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | test_run                   | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | user                       | table | vietbot | permanent   | heap          | 16 kB      | 
 public | user_api_keys              | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | variables                  | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | webhook_entity             | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | workflow_entity            | table | vietbot | permanent   | heap          | 88 kB      | 
 public | workflow_history           | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | workflow_statistics        | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | workflows_tags             | table | vietbot | permanent   | heap          | 0 bytes    | 
(45 rows)
```

## Indexes
```sql
                                             List of relations
 Schema |                       Name                        | Type  |  Owner  |           Table            
--------+---------------------------------------------------+-------+---------+----------------------------
 public | IDX_1e31657f5fe46816c34be7c1b4                    | index | vietbot | workflow_history
 public | IDX_1ef35bac35d20bdae979d917a3                    | index | vietbot | user_api_keys
 public | IDX_3a4e9cf37111ac3270e2469b47                    | index | vietbot | test_metric
 public | IDX_3a81713a76f2295b12b46cdfca                    | index | vietbot | test_run
 public | IDX_5f0643f6717905a05164090dde                    | index | vietbot | project_relation
 public | IDX_61448d56d61802b5dfde5cdb00                    | index | vietbot | project_relation
 public | IDX_63d7bbae72c767cf162d459fcc                    | index | vietbot | user_api_keys
 public | IDX_97f863fa83c4786f1956508496                    | index | vietbot | execution_annotations
 public | IDX_9ec1ce6fbf82305f489adb971d                    | index | vietbot | test_definition
 public | IDX_a3697779b366e131b2bbdae297                    | index | vietbot | execution_annotation_tags
 public | IDX_ae51b54c4bb430cf92f48b623f                    | index | vietbot | annotation_tag_entity
 public | IDX_b0dd0087fe3da02b0ffa4b9c5b                    | index | vietbot | test_definition
 public | IDX_c1519757391996eb06064f0e7c                    | index | vietbot | execution_annotation_tags
 public | IDX_cec8eea3bf49551482ccb4933e                    | index | vietbot | execution_metadata
 public | IDX_execution_entity_deletedAt                    | index | vietbot | execution_entity
 public | IDX_workflow_entity_name                          | index | vietbot | workflow_entity
 public | PK_011c050f566e9db509a0fadb9b9                    | index | vietbot | test_run
 public | PK_08cc9197c39b028c1e9beca225940576fd1a5804       | index | vietbot | installed_packages
 public | PK_17a0b6284f8d626aae88e1c16e4                    | index | vietbot | execution_metadata
 public | PK_1caaa312a5d7184a003be0f0cb6                    | index | vietbot | project_relation
 public | PK_3e98b8e20acc19c5030a8644142                    | index | vietbot | test_metric
 public | PK_4d68b1358bb5b766d3e78f32f57                    | index | vietbot | project
 public | PK_5779069b7235b256d91f7af1a15                    | index | vietbot | invalid_auth_token
 public | PK_5ba87620386b847201c9531c58f                    | index | vietbot | shared_workflow
 public | PK_69dfa041592c30bbc0d4b84aa00                    | index | vietbot | annotation_tag_entity
 public | PK_7afcf93ffa20c4252869a7c6a23                    | index | vietbot | execution_annotations
 public | PK_8c82d7f526340ab734260ea46be                    | index | vietbot | migrations
 public | PK_8ebd28194e4f792f96b5933423fc439df97d9689       | index | vietbot | installed_nodes
 public | PK_8ef3a59796a228913f251779cff                    | index | vietbot | shared_credentials
 public | PK_978fa5caa3468f463dac9d92e69                    | index | vietbot | user_api_keys
 public | PK_979ec03d31294cca484be65d11f                    | index | vietbot | execution_annotation_tags
 public | PK_b21ace2e13596ccd87dc9bf4ea6                    | index | vietbot | webhook_entity
 public | PK_b6572dd6173e4cd06fe79937b58                    | index | vietbot | workflow_history
 public | PK_ca04b9d8dc72de268fe07a65773                    | index | vietbot | processed_data
 public | PK_dc0fe14e6d9943f268e7b119f69ab8bd               | index | vietbot | settings
 public | PK_e853ce24e8200abe5721d2c6ac552b73               | index | vietbot | role
 public | PK_ea8f538c94b6e352418254ed6474a81f               | index | vietbot | user
 public | UQ_5b49d0f504f7ef31045a1fb2eb8                    | index | vietbot | role
 public | UQ_e12875dfb3b1d92d7d7c5377e2                     | index | vietbot | user
 public | analytics_pkey                                    | index | vietbot | analytics
 public | auth_identity_pkey                                | index | vietbot | auth_identity
 public | auth_provider_sync_history_pkey                   | index | vietbot | auth_provider_sync_history
 public | conversations_message_id_key                      | index | vietbot | conversations
 public | conversations_pkey                                | index | vietbot | conversations
 public | credentials_entity_pkey                           | index | vietbot | credentials_entity
 public | customers_fb_user_id_key                          | index | vietbot | customers
 public | customers_pkey                                    | index | vietbot | customers
 public | escalations_pkey                                  | index | vietbot | escalations
 public | event_destinations_pkey                           | index | vietbot | event_destinations
 public | execution_data_pkey                               | index | vietbot | execution_data
 public | faq_pkey                                          | index | vietbot | faq
 public | idx_07fde106c0b471d8cc80a64fc8                    | index | vietbot | credentials_entity
 public | idx_16f4436789e804e3e1c9eeb240                    | index | vietbot | webhook_entity
 public | idx_812eb05f7451ca757fb98444ce                    | index | vietbot | tag_entity
 public | idx_conversations_intent                          | index | vietbot | conversations
 public | idx_conversations_session_id                      | index | vietbot | conversations
 public | idx_customers_fb_user_id                          | index | vietbot | customers
 public | idx_escalations_status                            | index | vietbot | escalations
 public | idx_execution_entity_stopped_at_status_deleted_at | index | vietbot | execution_entity
 public | idx_execution_entity_wait_till_status_deleted_at  | index | vietbot | execution_entity
 public | idx_execution_entity_workflow_id_started_at       | index | vietbot | execution_entity
 public | idx_message_queue_customer_id                     | index | vietbot | message_queue
 public | idx_message_queue_status                          | index | vietbot | message_queue
 public | idx_orders_customer_id                            | index | vietbot | orders
 public | idx_orders_status                                 | index | vietbot | orders
 public | idx_products_active                               | index | vietbot | products
 public | idx_products_category                             | index | vietbot | products
 public | idx_sessions_customer_id                          | index | vietbot | sessions
 public | idx_sessions_status                               | index | vietbot | sessions
 public | idx_workflows_tags_workflow_id                    | index | vietbot | workflows_tags
 public | intents_intent_name_key                           | index | vietbot | intents
 public | intents_pkey                                      | index | vietbot | intents
 public | message_queue_fb_message_id_key                   | index | vietbot | message_queue
 public | message_queue_pkey                                | index | vietbot | message_queue
 public | order_items_pkey                                  | index | vietbot | order_items
 public | orders_order_number_key                           | index | vietbot | orders
 public | orders_pkey                                       | index | vietbot | orders
 public | pk_credentials_entity_id                          | index | vietbot | credentials_entity
 public | pk_e3e63bbf986767844bbe1166d4e                    | index | vietbot | execution_entity
 public | pk_tag_entity_id                                  | index | vietbot | tag_entity
 public | pk_test_definition_id                             | index | vietbot | test_definition
 public | pk_variables_id                                   | index | vietbot | variables
 public | pk_workflow_entity_id                             | index | vietbot | workflow_entity
 public | pk_workflow_statistics                            | index | vietbot | workflow_statistics
 public | pk_workflows_tags                                 | index | vietbot | workflows_tags
 public | products_pkey                                     | index | vietbot | products
 public | products_sku_key                                  | index | vietbot | products
 public | sessions_pkey                                     | index | vietbot | sessions
 public | sessions_session_id_key                           | index | vietbot | sessions
 public | system_config_config_key_key                      | index | vietbot | system_config
 public | system_config_pkey                                | index | vietbot | system_config
 public | tag_entity_pkey                                   | index | vietbot | tag_entity
 public | test_definition_pkey                              | index | vietbot | test_definition
 public | variables_key_key                                 | index | vietbot | variables
 public | variables_pkey                                    | index | vietbot | variables
 public | workflow_entity_pkey                              | index | vietbot | workflow_entity
(96 rows)
```

## Table Details & Sample Data

### 📊 Table: customers
#### Schema:
```sql
                                                                   Table "public.customers"
   Column   |            Type             | Collation | Nullable |                Default                | Storage  | Compression | Stats target | Description 
------------+-----------------------------+-----------+----------+---------------------------------------+----------+-------------+--------------+-------------
 id         | integer                     |           | not null | nextval('customers_id_seq'::regclass) | plain    |             |              | 
 fb_user_id | character varying(50)       |           | not null |                                       | extended |             |              | 
 name       | character varying(100)      |           |          |                                       | extended |             |              | 
 phone      | character varying(20)       |           |          |                                       | extended |             |              | 
 email      | character varying(100)      |           |          |                                       | extended |             |              | 
 address    | text                        |           |          |                                       | extended |             |              | 
 note       | text                        |           |          |                                       | extended |             |              | 
 tags       | text[]                      |           |          |                                       | extended |             |              | 
 created_at | timestamp without time zone |           |          | CURRENT_TIMESTAMP                     | plain    |             |              | 
 updated_at | timestamp without time zone |           |          | CURRENT_TIMESTAMP                     | plain    |             |              | 
Indexes:
    "customers_pkey" PRIMARY KEY, btree (id)
    "customers_fb_user_id_key" UNIQUE CONSTRAINT, btree (fb_user_id)
    "idx_customers_fb_user_id" btree (fb_user_id)
Referenced by:
    TABLE "message_queue" CONSTRAINT "message_queue_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(id)
    TABLE "orders" CONSTRAINT "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(id)
    TABLE "sessions" CONSTRAINT "sessions_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(id)
Triggers:
    update_customers_updated_at BEFORE UPDATE ON customers FOR EACH ROW EXECUTE FUNCTION update_updated_at_column()
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          0
(1 row)

```

#### Sample Data (First 5 rows):
```sql
 id | fb_user_id | name | phone | email | address | note | tags | created_at | updated_at 
----+------------+------+-------+-------+---------+------+------+------------+------------
(0 rows)

```


### 📊 Table: conversations
#### Schema:
```sql
                                                                    Table "public.conversations"
    Column    |            Type             | Collation | Nullable |                  Default                  | Storage  | Compression | Stats target | Description 
--------------+-----------------------------+-----------+----------+-------------------------------------------+----------+-------------+--------------+-------------
 id           | integer                     |           | not null | nextval('conversations_id_seq'::regclass) | plain    |             |              | 
 session_id   | integer                     |           |          |                                           | plain    |             |              | 
 message_id   | character varying(100)      |           |          |                                           | extended |             |              | 
 sender_type  | character varying(20)       |           | not null |                                           | extended |             |              | 
 message_text | text                        |           |          |                                           | extended |             |              | 
 intent       | character varying(50)       |           |          |                                           | extended |             |              | 
 context      | jsonb                       |           |          |                                           | extended |             |              | 
 timestamp    | timestamp without time zone |           |          | CURRENT_TIMESTAMP                         | plain    |             |              | 
Indexes:
    "conversations_pkey" PRIMARY KEY, btree (id)
    "conversations_message_id_key" UNIQUE CONSTRAINT, btree (message_id)
    "idx_conversations_intent" btree (intent)
    "idx_conversations_session_id" btree (session_id)
Foreign-key constraints:
    "conversations_session_id_fkey" FOREIGN KEY (session_id) REFERENCES sessions(id)
Referenced by:
    TABLE "escalations" CONSTRAINT "escalations_conversation_id_fkey" FOREIGN KEY (conversation_id) REFERENCES conversations(id)
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          0
(1 row)

```

#### Sample Data (First 5 rows):
```sql
 id | session_id | message_id | sender_type | message_text | intent | context | timestamp 
----+------------+------------+-------------+--------------+--------+---------+-----------
(0 rows)

```


### 📊 Table: messages
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: execution_entity
#### Schema:
```sql
                                                                     Table "public.execution_entity"
     Column     |            Type             | Collation | Nullable |                   Default                    | Storage  | Compression | Stats target | Description 
----------------+-----------------------------+-----------+----------+----------------------------------------------+----------+-------------+--------------+-------------
 id             | integer                     |           | not null | nextval('execution_entity_id_seq'::regclass) | plain    |             |              | 
 finished       | boolean                     |           | not null |                                              | plain    |             |              | 
 mode           | character varying           |           | not null |                                              | extended |             |              | 
 retryOf        | character varying           |           |          |                                              | extended |             |              | 
 retrySuccessId | character varying           |           |          |                                              | extended |             |              | 
 startedAt      | timestamp(3) with time zone |           |          |                                              | plain    |             |              | 
 stoppedAt      | timestamp(3) with time zone |           |          |                                              | plain    |             |              | 
 waitTill       | timestamp(3) with time zone |           |          |                                              | plain    |             |              | 
 status         | character varying           |           | not null |                                              | extended |             |              | 
 workflowId     | character varying(36)       |           | not null |                                              | extended |             |              | 
 deletedAt      | timestamp(3) with time zone |           |          |                                              | plain    |             |              | 
 createdAt      | timestamp(3) with time zone |           | not null | CURRENT_TIMESTAMP(3)                         | plain    |             |              | 
Indexes:
    "pk_e3e63bbf986767844bbe1166d4e" PRIMARY KEY, btree (id)
    "IDX_execution_entity_deletedAt" btree ("deletedAt")
    "idx_execution_entity_stopped_at_status_deleted_at" btree ("stoppedAt", status, "deletedAt") WHERE "stoppedAt" IS NOT NULL AND "deletedAt" IS NULL
    "idx_execution_entity_wait_till_status_deleted_at" btree ("waitTill", status, "deletedAt") WHERE "waitTill" IS NOT NULL AND "deletedAt" IS NULL
    "idx_execution_entity_workflow_id_started_at" btree ("workflowId", "startedAt") WHERE "startedAt" IS NOT NULL AND "deletedAt" IS NULL
Foreign-key constraints:
    "fk_execution_entity_workflow_id" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
Referenced by:
    TABLE "execution_metadata" CONSTRAINT "FK_31d0b4c93fb85ced26f6005cda3" FOREIGN KEY ("executionId") REFERENCES execution_entity(id) ON DELETE CASCADE
    TABLE "execution_annotations" CONSTRAINT "FK_97f863fa83c4786f19565084960" FOREIGN KEY ("executionId") REFERENCES execution_entity(id) ON DELETE CASCADE
    TABLE "execution_data" CONSTRAINT "execution_data_fk" FOREIGN KEY ("executionId") REFERENCES execution_entity(id) ON DELETE CASCADE
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          0
(1 row)

```

#### Sample Data (First 5 rows):
```sql
 id | finished | mode | retryOf | retrySuccessId | startedAt | stoppedAt | waitTill | status | workflowId | deletedAt | createdAt 
----+----------+------+---------+----------------+-----------+-----------+----------+--------+------------+-----------+-----------
(0 rows)

```


### 📊 Table: session_states
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: orders
#### Schema:
```sql
                                                                      Table "public.orders"
      Column      |            Type             | Collation | Nullable |              Default               | Storage  | Compression | Stats target | Description 
------------------+-----------------------------+-----------+----------+------------------------------------+----------+-------------+--------------+-------------
 id               | integer                     |           | not null | nextval('orders_id_seq'::regclass) | plain    |             |              | 
 customer_id      | integer                     |           |          |                                    | plain    |             |              | 
 order_number     | character varying(50)       |           | not null |                                    | extended |             |              | 
 status           | character varying(50)       |           |          | 'pending'::character varying       | extended |             |              | 
 total_amount     | numeric(10,2)               |           |          |                                    | main     |             |              | 
 shipping_address | text                        |           |          |                                    | extended |             |              | 
 note             | text                        |           |          |                                    | extended |             |              | 
 created_at       | timestamp without time zone |           |          | CURRENT_TIMESTAMP                  | plain    |             |              | 
 updated_at       | timestamp without time zone |           |          | CURRENT_TIMESTAMP                  | plain    |             |              | 
Indexes:
    "orders_pkey" PRIMARY KEY, btree (id)
    "idx_orders_customer_id" btree (customer_id)
    "idx_orders_status" btree (status)
    "orders_order_number_key" UNIQUE CONSTRAINT, btree (order_number)
Foreign-key constraints:
    "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(id)
Referenced by:
    TABLE "order_items" CONSTRAINT "order_items_order_id_fkey" FOREIGN KEY (order_id) REFERENCES orders(id)
Triggers:
    update_orders_updated_at BEFORE UPDATE ON orders FOR EACH ROW EXECUTE FUNCTION update_updated_at_column()
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          0
(1 row)

```

#### Sample Data (First 5 rows):
```sql
 id | customer_id | order_number | status | total_amount | shipping_address | note | created_at | updated_at 
----+-------------+--------------+--------+--------------+------------------+------+------------+------------
(0 rows)

```


### 📊 Table: products
#### Schema:
```sql
                                                                     Table "public.products"
     Column     |            Type             | Collation | Nullable |               Default                | Storage  | Compression | Stats target | Description 
----------------+-----------------------------+-----------+----------+--------------------------------------+----------+-------------+--------------+-------------
 id             | integer                     |           | not null | nextval('products_id_seq'::regclass) | plain    |             |              | 
 sku            | character varying(50)       |           | not null |                                      | extended |             |              | 
 name           | character varying(200)      |           | not null |                                      | extended |             |              | 
 description    | text                        |           |          |                                      | extended |             |              | 
 price          | numeric(10,2)               |           |          |                                      | main     |             |              | 
 stock_quantity | integer                     |           |          | 0                                    | plain    |             |              | 
 category       | character varying(100)      |           |          |                                      | extended |             |              | 
 tags           | text[]                      |           |          |                                      | extended |             |              | 
 image_url      | character varying(500)      |           |          |                                      | extended |             |              | 
 active         | boolean                     |           |          | true                                 | plain    |             |              | 
 created_at     | timestamp without time zone |           |          | CURRENT_TIMESTAMP                    | plain    |             |              | 
 updated_at     | timestamp without time zone |           |          | CURRENT_TIMESTAMP                    | plain    |             |              | 
Indexes:
    "products_pkey" PRIMARY KEY, btree (id)
    "idx_products_active" btree (active)
    "idx_products_category" btree (category)
    "products_sku_key" UNIQUE CONSTRAINT, btree (sku)
Referenced by:
    TABLE "order_items" CONSTRAINT "order_items_product_id_fkey" FOREIGN KEY (product_id) REFERENCES products(id)
Triggers:
    update_products_updated_at BEFORE UPDATE ON products FOR EACH ROW EXECUTE FUNCTION update_updated_at_column()
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          0
(1 row)

```

#### Sample Data (First 5 rows):
```sql
 id | sku | name | description | price | stock_quantity | category | tags | image_url | active | created_at | updated_at 
----+-----+------+-------------+-------+----------------+----------+------+-----------+--------+------------+------------
(0 rows)

```


### 📊 Table: user_preferences
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: faq_items
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: analytics_events
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: error_logs
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: audit_logs
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: workflow_entity
#### Schema:
```sql
                                                         Table "public.workflow_entity"
    Column    |            Type             | Collation | Nullable |       Default        | Storage  | Compression | Stats target | Description 
--------------+-----------------------------+-----------+----------+----------------------+----------+-------------+--------------+-------------
 name         | character varying(128)      |           | not null |                      | extended |             |              | 
 active       | boolean                     |           | not null |                      | plain    |             |              | 
 nodes        | json                        |           | not null |                      | extended |             |              | 
 connections  | json                        |           | not null |                      | extended |             |              | 
 createdAt    | timestamp(3) with time zone |           | not null | CURRENT_TIMESTAMP(3) | plain    |             |              | 
 updatedAt    | timestamp(3) with time zone |           | not null | CURRENT_TIMESTAMP(3) | plain    |             |              | 
 settings     | json                        |           |          |                      | extended |             |              | 
 staticData   | json                        |           |          |                      | extended |             |              | 
 pinData      | json                        |           |          |                      | extended |             |              | 
 versionId    | character(36)               |           |          |                      | extended |             |              | 
 triggerCount | integer                     |           | not null | 0                    | plain    |             |              | 
 id           | character varying(36)       |           | not null |                      | extended |             |              | 
 meta         | json                        |           |          |                      | extended |             |              | 
Indexes:
    "workflow_entity_pkey" PRIMARY KEY, btree (id)
    "IDX_workflow_entity_name" btree (name)
    "pk_workflow_entity_id" UNIQUE, btree (id)
Referenced by:
    TABLE "processed_data" CONSTRAINT "FK_06a69a7032c97a763c2c7599464" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "workflow_history" CONSTRAINT "FK_1e31657f5fe46816c34be7c1b4b" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "test_definition" CONSTRAINT "FK_9ec1ce6fbf82305f489adb971d3" FOREIGN KEY ("evaluationWorkflowId") REFERENCES workflow_entity(id) ON DELETE SET NULL
    TABLE "test_definition" CONSTRAINT "FK_b0dd0087fe3da02b0ffa4b9c5bb" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "shared_workflow" CONSTRAINT "FK_daa206a04983d47d0a9c34649ce" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "execution_entity" CONSTRAINT "fk_execution_entity_workflow_id" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "webhook_entity" CONSTRAINT "fk_webhook_entity_workflow_id" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "workflow_statistics" CONSTRAINT "fk_workflow_statistics_workflow_id" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
    TABLE "workflows_tags" CONSTRAINT "fk_workflows_tags_workflow_id" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          1
(1 row)

```

#### Sample Data (First 5 rows):
```sql
    name     | active |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    nodes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             connections                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |         createdAt          |         updatedAt          |        settings         | staticData | pinData |              versionId               | triggerCount |        id        | meta 
-------------+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------+-------------------------+------------+---------+--------------------------------------+--------------+------------------+------
 My workflow | f      | [{"parameters":{},"id":"8bc7cf15-a4f2-48a0-b3d3-f9f35ad3eacf","name":"Mark Message Processed","type":"n8n-nodes-base.redis","typeVersion":1,"position":[1040,-120],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{},"id":"a5b5d215-f35c-4f8d-9698-9381d118cb53","name":"Parse Queue Message","type":"n8n-nodes-base.code","typeVersion":2,"position":[620,200]},{"parameters":{"path":"facebook-webhook","responseMode":"responseNode","options":{}},"id":"68fd1b3a-2b6c-4401-a648-e1f413a18c3a","name":"Facebook Webhook1","type":"n8n-nodes-base.webhook","typeVersion":2,"position":[40,-240],"webhookId":"f3a2b7c4-8e9d-4f1a-b5c6-7d8e9f0a1b2c"},{"parameters":{"options":{}},"id":"90faa4a5-c382-4924-99c2-5ef654afc7bd","name":"Respond 200 OK1","type":"n8n-nodes-base.respondToWebhook","typeVersion":1.1,"position":[240,-360]},{"parameters":{},"id":"207722d2-cf1e-4646-bc1a-92de47cef551","name":"Parse Message1","type":"n8n-nodes-base.code","typeVersion":2,"position":[240,-120]},{"parameters":{},"id":"aef1373a-731e-422b-a381-a70ecd076ad3","name":"Check Duplicate Redis1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[420,-120],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{"options":{}},"id":"29aac935-1d51-4f94-8cef-848e7977c49e","name":"Is New Message1","type":"n8n-nodes-base.if","typeVersion":2,"position":[620,-120]},{"parameters":{},"id":"6a30c7d1-6502-475c-be6c-36fbacb409e6","name":"Push to Queue Redis1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[820,-120],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{"rule":{"interval":[{}]}},"id":"99ffc551-151f-4f86-bff5-69126b21bb7d","name":"Queue Processor Cron1","type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.1,"position":[40,200]},{"parameters":{},"id":"74ed8246-0ce0-456b-8983-680c8a3c59da","name":"Pop from Queue1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[240,200],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{"options":{}},"id":"36e65933-fa9b-444c-bd5f-23ab9e016b4e","name":"Has Message Check1","type":"n8n-nodes-base.if","typeVersion":2,"position":[420,200]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"1c8dc59f-54d0-4aa1-b7c9-5160359d3f3c","name":"Get Customer Postgres1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[820,200],"credentials":{"postgres":{"id":"8zjOVJmdhwtoVazm","name":"Postgres account"}}},{"parameters":{"options":{}},"id":"63b05507-5d06-49c0-9f7a-96875d53ef1f","name":"Customer Exists Check1","type":"n8n-nodes-base.if","typeVersion":2,"position":[1040,200]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"13e77f1a-5fd7-4504-82b0-a4168db58a20","name":"Create Customer Postgres1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[1240,280]},{"parameters":{},"id":"d66924c8-972b-4d5b-81e5-3f63217d7bc7","name":"Get Session Redis1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[1460,180],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{},"id":"2eed33d3-b5f0-4876-a7e7-ead90a613261","name":"Session Manager1","type":"n8n-nodes-base.code","typeVersion":2,"position":[1660,180]},{"parameters":{},"id":"d64c4fb5-8772-4e7f-9bf4-1f446c5ab2f8","name":"Update Session Redis1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[1860,180],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{},"id":"618f8fce-edcd-4c34-8738-bd8ac09b6243","name":"Get Products Cache1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[2060,80],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"2e019421-6a7f-44ad-b59b-8d7a6cc99f43","name":"Get Config Postgres1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[2080,300]},{"parameters":{"options":{}},"id":"29d2c6d6-7a46-4d18-b897-0e1b63044052","name":"Cache Hit Check1","type":"n8n-nodes-base.if","typeVersion":2,"position":[2260,80]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"261ab519-e76d-43e1-9d5e-0700b10a0e52","name":"Get Products Postgres1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[2440,80]},{"parameters":{},"id":"5edd4af1-027c-4105-b846-49b8706c95ee","name":"Cache Products Redis1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[2640,80],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{},"id":"8ce431c6-8a01-4829-aca6-585461f01d2c","name":"Merge All Data1","type":"n8n-nodes-base.merge","typeVersion":3,"position":[2800,280]},{"parameters":{},"id":"b121397a-6517-4025-a9d4-b5819fee77f4","name":"Build AI Prompt1","type":"n8n-nodes-base.code","typeVersion":2,"position":[3000,280]},{"parameters":{},"id":"7cff5ca8-9b62-4ad5-b10e-51bf8e668efc","name":"AI Process Multi Provider1","type":"n8n-nodes-base.code","typeVersion":2,"position":[3600,460]},{"parameters":{},"id":"88121f68-3891-49b5-a80e-120e233b6b6f","name":"Detect Intent Signals1","type":"n8n-nodes-base.code","typeVersion":2,"position":[4000,260]},{"parameters":{"rules":{"values":[{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":1},"conditions":[{"leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals"}}],"combinator":"and"}},{},{},{}]},"options":{}},"id":"c2d7bc6e-6443-4ed5-9476-1689d10eafbf","name":"Route by Intent1","type":"n8n-nodes-base.switch","typeVersion":3,"position":[4200,240]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"4471546b-402f-4755-a897-d99a289f1317","name":"Create Escalation1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[4580,20]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"4bea5408-7741-4ba4-a06b-fc17fcfef940","name":"Create Order1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[4580,180]},{"parameters":{"options":{}},"id":"85032183-e699-46d9-8839-51f0d7769a2e","name":"Has Image Products1","type":"n8n-nodes-base.if","typeVersion":2,"position":[4580,500]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"f0e92ffe-4151-4262-9f65-e077dba2ba3e","name":"Search FAQ Postgres1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[4580,340]},{"parameters":{},"id":"92413fae-b53e-45b9-8b35-48c20296cd8f","name":"Build Response1","type":"n8n-nodes-base.code","typeVersion":2,"position":[4960,340]},{"parameters":{"options":{}},"id":"babeccb6-de1f-41ae-aa1c-852f0c6b0942","name":"Send Facebook Message1","type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[5160,340]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"293d9087-dd34-4c5b-9a69-b47d26ab1065","name":"Log Conversation1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[5380,340]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"fa9e5159-5be4-4906-bd5e-a0f0bdae2442","name":"Update Analytics1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[5560,340]},{"parameters":{"options":{}},"id":"a7217908-2fd8-485f-84f5-0ae8c6d80c13","name":"Notify Admin Complaint1","type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[4960,20]},{"parameters":{"options":{}},"id":"7a5f3cfc-8d41-424f-8ada-d15661372464","name":"Notify Admin Order1","type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[4960,180]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"e7cad89e-9b81-4147-8638-4a3e13a2e317","name":"Log Error Postgres1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[240,500]},{"parameters":{"rule":{"interval":[{}]}},"id":"bcda04ad-eb16-4043-b1ef-0c59ca6c5e11","name":"Daily Analytics Cron1","type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.1,"position":[40,680]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"bd13dc91-c5c0-4684-a0cc-aefde4315cf7","name":"Calculate Metrics1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[240,680]},{"parameters":{"rule":{"interval":[{}]}},"id":"7be9eb38-5aac-40b1-9069-a656b8a54baf","name":"Sync Schedule 5min1","type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.1,"position":[40,880]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"b41810bb-40f7-473d-88bf-845af2dfb986","name":"Get Sync Queue1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[240,880]},{"parameters":{"authentication":"serviceAccount","documentId":{"__rl":true,"mode":"list","value":""},"sheetName":{"__rl":true,"mode":"list","value":""}},"id":"2a3fdc70-c5c8-487f-9448-3fb7dffce51b","name":"Sync to Google Sheets1","type":"n8n-nodes-base.googleSheets","typeVersion":4.5,"position":[440,880]},{"parameters":{"schema":{"__rl":true,"mode":"list","value":"public"},"table":{"__rl":true,"mode":"list","value":""}},"id":"8e6701f9-f1e7-4d97-b39a-19dbec943e3f","name":"Mark Synced1","type":"n8n-nodes-base.postgres","typeVersion":2.4,"position":[640,880]},{"parameters":{"batchSize":3,"options":{}},"id":"73cfc8a1-4fc8-4b26-8606-6474df80e2c1","name":"Loop Over Items1","type":"n8n-nodes-base.splitInBatches","typeVersion":3,"position":[4960,680]},{"parameters":{"options":{}},"id":"96def2d2-dd77-4e71-9638-07a52be6fa04","name":"Send Product Image1","type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[5200,700]},{"parameters":{"amount":1},"id":"64f374ab-9428-43cd-abfc-db58144cd245","name":"Wait1","type":"n8n-nodes-base.wait","typeVersion":1.1,"position":[5460,700],"webhookId":"10fd9020-0bac-46f9-b8e1-78a79dd7a112"},{"parameters":{"options":{}},"id":"e657238b-06a1-4689-9fcc-6e268bbab161","name":"Send No Image Message1","type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[4960,520]},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict"},"conditions":[{"leftValue":"","rightValue":"","operator":{"type":"string","operation":"equals"}}],"combinator":"and"},"options":{}},"id":"ab1ab60d-68b1-48d8-bbae-c9fddd526594","name":"Has Image?1","type":"n8n-nodes-base.if","typeVersion":2,"position":[3200,280]},{"parameters":{"options":{}},"id":"98e38110-e818-41a1-9b1d-4c0c8dc250a7","name":"Download Customer Image1","type":"n8n-nodes-base.httpRequest","typeVersion":4.2,"position":[3400,260]},{"parameters":{},"id":"e247af58-eb95-4c4f-8279-1d9a8a55c254","name":"AI Process Image1","type":"n8n-nodes-base.code","typeVersion":2,"position":[3600,260]},{"parameters":{},"id":"43fda366-700b-4440-9959-cfbad7288787","name":"Save Chat History1","type":"n8n-nodes-base.redis","typeVersion":1,"position":[3800,260],"credentials":{"redis":{"id":"KFIWWSbEaaGjr7p2","name":"Redis account"}}},{"parameters":{"options":{}},"id":"4c9c07a3-e37c-4fc4-ad55-4338cec413b6","name":"Respond Final1","type":"n8n-nodes-base.respondToWebhook","typeVersion":1.1,"position":[5900,340]}] | {"Parse Queue Message":{"main":[[{"node":"Get Customer Postgres1","type":"main","index":0}]]},"Facebook Webhook1":{"main":[[{"node":"Respond 200 OK1","type":"main","index":0},{"node":"Parse Message1","type":"main","index":0}]]},"Parse Message1":{"main":[[{"node":"Check Duplicate Redis1","type":"main","index":0}]]},"Check Duplicate Redis1":{"main":[[{"node":"Is New Message1","type":"main","index":0}]]},"Is New Message1":{"main":[[{"node":"Push to Queue Redis1","type":"main","index":0}]]},"Queue Processor Cron1":{"main":[[{"node":"Pop from Queue1","type":"main","index":0}]]},"Pop from Queue1":{"main":[[{"node":"Has Message Check1","type":"main","index":0}]]},"Has Message Check1":{"main":[[{"node":"Parse Queue Message","type":"main","index":0}]]},"Get Customer Postgres1":{"main":[[{"node":"Customer Exists Check1","type":"main","index":0}]]},"Customer Exists Check1":{"main":[[{"node":"Get Session Redis1","type":"main","index":0}],[{"node":"Create Customer Postgres1","type":"main","index":0}]]},"Create Customer Postgres1":{"main":[[{"node":"Get Session Redis1","type":"main","index":0}]]},"Get Session Redis1":{"main":[[{"node":"Session Manager1","type":"main","index":0}]]},"Session Manager1":{"main":[[{"node":"Update Session Redis1","type":"main","index":0}]]},"Update Session Redis1":{"main":[[{"node":"Get Products Cache1","type":"main","index":0},{"node":"Get Config Postgres1","type":"main","index":0}]]},"Get Products Cache1":{"main":[[{"node":"Cache Hit Check1","type":"main","index":0}]]},"Get Config Postgres1":{"main":[[{"node":"Merge All Data1","type":"main","index":1}]]},"Cache Hit Check1":{"main":[[{"node":"Merge All Data1","type":"main","index":0}],[{"node":"Get Products Postgres1","type":"main","index":0}]]},"Get Products Postgres1":{"main":[[{"node":"Cache Products Redis1","type":"main","index":0}]]},"Cache Products Redis1":{"main":[[{"node":"Merge All Data1","type":"main","index":0}]]},"Merge All Data1":{"main":[[{"node":"Build AI Prompt1","type":"main","index":0}]]},"Build AI Prompt1":{"main":[[{"node":"Has Image?1","type":"main","index":0}]]},"AI Process Multi Provider1":{"main":[[{"node":"Save Chat History1","type":"main","index":0}]]},"Detect Intent Signals1":{"main":[[{"node":"Route by Intent1","type":"main","index":0}]]},"Route by Intent1":{"main":[[{"node":"Create Escalation1","type":"main","index":0}],[{"node":"Create Order1","type":"main","index":0}],[{"node":"Search FAQ Postgres1","type":"main","index":0}],[{"node":"Has Image Products1","type":"main","index":0}]]},"Create Escalation1":{"main":[[{"node":"Notify Admin Complaint1","type":"main","index":0},{"node":"Build Response1","type":"main","index":0}]]},"Create Order1":{"main":[[{"node":"Notify Admin Order1","type":"main","index":0},{"node":"Build Response1","type":"main","index":0}]]},"Has Image Products1":{"main":[[{"node":"Loop Over Items1","type":"main","index":0}],[{"node":"Send No Image Message1","type":"main","index":0}]]},"Search FAQ Postgres1":{"main":[[{"node":"Build Response1","type":"main","index":0}]]},"Send Facebook Message1":{"main":[[{"node":"Log Conversation1","type":"main","index":0}]]},"Log Conversation1":{"main":[[{"node":"Update Analytics1","type":"main","index":0}]]},"Update Analytics1":{"main":[[{"node":"Respond Final1","type":"main","index":0}]]},"Daily Analytics Cron1":{"main":[[{"node":"Calculate Metrics1","type":"main","index":0}]]},"Sync Schedule 5min1":{"main":[[{"node":"Get Sync Queue1","type":"main","index":0}]]},"Get Sync Queue1":{"main":[[{"node":"Sync to Google Sheets1","type":"main","index":0}]]},"Sync to Google Sheets1":{"main":[[{"node":"Mark Synced1","type":"main","index":0}]]},"Loop Over Items1":{"main":[[{"node":"Respond Final1","type":"main","index":0}],[{"node":"Send Product Image1","type":"main","index":0}]]},"Send Product Image1":{"main":[[{"node":"Wait1","type":"main","index":0}]]},"Wait1":{"main":[[{"node":"Loop Over Items1","type":"main","index":0}]]},"Send No Image Message1":{"main":[[{"node":"Respond Final1","type":"main","index":0}]]},"Has Image?1":{"main":[[{"node":"Download Customer Image1","type":"main","index":0}],[{"node":"AI Process Multi Provider1","type":"main","index":0}]]},"Download Customer Image1":{"main":[[{"node":"AI Process Image1","type":"main","index":0}]]},"AI Process Image1":{"main":[[{"node":"Save Chat History1","type":"main","index":0}]]},"Save Chat History1":{"main":[[{"node":"Detect Intent Signals1","type":"main","index":0}]]},"Build Response1":{"main":[[{"node":"Send Facebook Message1","type":"main","index":0}]]},"Notify Admin Order1":{"main":[[{"node":"Respond Final1","type":"main","index":0}]]},"Notify Admin Complaint1":{"main":[[{"node":"Respond Final1","type":"main","index":0}]]},"Push to Queue Redis1":{"main":[[{"node":"Mark Message Processed","type":"main","index":0}]]}} | 2025-07-10 16:28:46.816+00 | 2025-07-12 06:10:58.687+00 | {"executionOrder":"v1"} |            | {}      | 9af3f4c5-acb4-4d49-a03d-5476d11caa9b |            0 | ZNcpFTP2smC1bTFw | 
(1 row)

```


### 📊 Table: credentials_entity
#### Schema:
```sql
                                                      Table "public.credentials_entity"
  Column   |            Type             | Collation | Nullable |       Default        | Storage  | Compression | Stats target | Description 
-----------+-----------------------------+-----------+----------+----------------------+----------+-------------+--------------+-------------
 name      | character varying(128)      |           | not null |                      | extended |             |              | 
 data      | text                        |           | not null |                      | extended |             |              | 
 type      | character varying(128)      |           | not null |                      | extended |             |              | 
 createdAt | timestamp(3) with time zone |           | not null | CURRENT_TIMESTAMP(3) | plain    |             |              | 
 updatedAt | timestamp(3) with time zone |           | not null | CURRENT_TIMESTAMP(3) | plain    |             |              | 
 id        | character varying(36)       |           | not null |                      | extended |             |              | 
Indexes:
    "credentials_entity_pkey" PRIMARY KEY, btree (id)
    "idx_07fde106c0b471d8cc80a64fc8" btree (type)
    "pk_credentials_entity_id" UNIQUE, btree (id)
Referenced by:
    TABLE "shared_credentials" CONSTRAINT "FK_416f66fc846c7c442970c094ccf" FOREIGN KEY ("credentialsId") REFERENCES credentials_entity(id) ON DELETE CASCADE
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          2
(1 row)

```

#### Sample Data (First 5 rows):
```sql
       name       |                                                                           data                                                                           |   type   |         createdAt          |         updatedAt          |        id        
------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------------------+----------------------------+------------------
 Redis account    | U2FsdGVkX1+wdw4Cu+bckU7qwYyAO4aNlOJTPAg8Uqbt9Rh1U4VXh1bGa2uhSH7j                                                                                         | redis    | 2025-07-12 04:26:06.653+00 | 2025-07-12 04:26:21.888+00 | KFIWWSbEaaGjr7p2
 Postgres account | U2FsdGVkX1+gWVmb3E18kUZ0RO8CB7c9MAAhsr+AwZULpwXsZpReyGp4ptCBfvDDIip0u/Fx8RAuvpDpTxQHIihw+x6jhAIXAZ7H22HcYWiDFkBb5xQizM0fgtoD5luB/buljZI7qDA4mH/URRZM3Q== | postgres | 2025-07-12 04:28:04.492+00 | 2025-07-12 04:31:59.598+00 | 8zjOVJmdhwtoVazm
(2 rows)

```


### 📊 Table: webhook_entity
#### Schema:
```sql
                                               Table "public.webhook_entity"
   Column    |         Type          | Collation | Nullable | Default | Storage  | Compression | Stats target | Description 
-------------+-----------------------+-----------+----------+---------+----------+-------------+--------------+-------------
 webhookPath | character varying     |           | not null |         | extended |             |              | 
 method      | character varying     |           | not null |         | extended |             |              | 
 node        | character varying     |           | not null |         | extended |             |              | 
 webhookId   | character varying     |           |          |         | extended |             |              | 
 pathLength  | integer               |           |          |         | plain    |             |              | 
 workflowId  | character varying(36) |           | not null |         | extended |             |              | 
Indexes:
    "PK_b21ace2e13596ccd87dc9bf4ea6" PRIMARY KEY, btree ("webhookPath", method)
    "idx_16f4436789e804e3e1c9eeb240" btree ("webhookId", method, "pathLength")
Foreign-key constraints:
    "fk_webhook_entity_workflow_id" FOREIGN KEY ("workflowId") REFERENCES workflow_entity(id) ON DELETE CASCADE
Access method: heap

```

#### Row Count:
```sql
 total_rows 
------------
          0
(1 row)

```

#### Sample Data (First 5 rows):
```sql
 webhookPath | method | node | webhookId | pathLength | workflowId 
-------------+--------+------+-----------+------------+------------
(0 rows)

```

