# VietBot Database Schema - 2025-07-13 12:24:02

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


### 📊 Table: workflow_executions
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
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


### 📊 Table: workflows
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
```


### 📊 Table: credentials
#### Schema:
```sql
```

#### Row Count:
```sql
```

#### Sample Data (First 5 rows):
```sql
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

