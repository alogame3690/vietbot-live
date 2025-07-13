# Database Schema - 2025-07-13 11:32:01
```sql
Schema not available
```
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

