# Database Schema - Updated: 2025-07-14 01:13:01

```sql
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: update_updated_at_column(); Type: FUNCTION; Schema: public; Owner: vietbot
--

CREATE FUNCTION public.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.update_updated_at_column() OWNER TO vietbot;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    fb_user_id character varying(50) NOT NULL,
    name character varying(100),
    phone character varying(20),
    email character varying(100),
    address text,
    note text,
    tags text[],
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.customers OWNER TO vietbot;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    customer_id integer,
    session_id character varying(100) NOT NULL,
    started_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ended_at timestamp without time zone,
    status character varying(20) DEFAULT 'active'::character varying,
    metadata jsonb
);


ALTER TABLE public.sessions OWNER TO vietbot;

--
-- Name: active_sessions; Type: VIEW; Schema: public; Owner: vietbot
--

CREATE VIEW public.active_sessions AS
 SELECT s.id,
    s.customer_id,
    s.session_id,
    s.started_at,
    s.ended_at,
    s.status,
    s.metadata,
    c.name AS customer_name,
    c.fb_user_id
   FROM (public.sessions s
     JOIN public.customers c ON ((s.customer_id = c.id)))
  WHERE ((s.status)::text = 'active'::text);


ALTER TABLE public.active_sessions OWNER TO vietbot;

--
-- Name: analytics; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.analytics (
    id integer NOT NULL,
    metric_name character varying(100) NOT NULL,
    metric_value jsonb,
    date date DEFAULT CURRENT_DATE,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.analytics OWNER TO vietbot;

--
-- Name: analytics_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.analytics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.analytics_id_seq OWNER TO vietbot;

--
-- Name: analytics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.analytics_id_seq OWNED BY public.analytics.id;


--
-- Name: annotation_tag_entity; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.annotation_tag_entity (
    id character varying(16) NOT NULL,
    name character varying(24) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.annotation_tag_entity OWNER TO vietbot;

--
-- Name: auth_identity; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.auth_identity (
    "userId" uuid,
    "providerId" character varying(64) NOT NULL,
    "providerType" character varying(32) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.auth_identity OWNER TO vietbot;

--
-- Name: auth_provider_sync_history; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.auth_provider_sync_history (
    id integer NOT NULL,
    "providerType" character varying(32) NOT NULL,
    "runMode" text NOT NULL,
    status text NOT NULL,
    "startedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "endedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    scanned integer NOT NULL,
    created integer NOT NULL,
    updated integer NOT NULL,
    disabled integer NOT NULL,
    error text
);


ALTER TABLE public.auth_provider_sync_history OWNER TO vietbot;

--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.auth_provider_sync_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_provider_sync_history_id_seq OWNER TO vietbot;

--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.auth_provider_sync_history_id_seq OWNED BY public.auth_provider_sync_history.id;


--
-- Name: conversations; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.conversations (
    id integer NOT NULL,
    session_id integer,
    message_id character varying(100),
    sender_type character varying(20) NOT NULL,
    message_text text,
    intent character varying(50),
    context jsonb,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.conversations OWNER TO vietbot;

--
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.conversations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversations_id_seq OWNER TO vietbot;

--
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;


--
-- Name: credentials_entity; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.credentials_entity (
    name character varying(128) NOT NULL,
    data text NOT NULL,
    type character varying(128) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    id character varying(36) NOT NULL
);


ALTER TABLE public.credentials_entity OWNER TO vietbot;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO vietbot;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: escalations; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.escalations (
    id integer NOT NULL,
    conversation_id integer,
    reason character varying(200),
    assigned_to character varying(100),
    status character varying(50) DEFAULT 'open'::character varying,
    resolved_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.escalations OWNER TO vietbot;

--
-- Name: escalations_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.escalations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.escalations_id_seq OWNER TO vietbot;

--
-- Name: escalations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.escalations_id_seq OWNED BY public.escalations.id;


--
-- Name: event_destinations; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.event_destinations (
    id uuid NOT NULL,
    destination jsonb NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.event_destinations OWNER TO vietbot;

--
-- Name: execution_annotation_tags; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.execution_annotation_tags (
    "annotationId" integer NOT NULL,
    "tagId" character varying(24) NOT NULL
);


ALTER TABLE public.execution_annotation_tags OWNER TO vietbot;

--
-- Name: execution_annotations; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.execution_annotations (
    id integer NOT NULL,
    "executionId" integer NOT NULL,
    vote character varying(6),
    note text,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.execution_annotations OWNER TO vietbot;

--
-- Name: execution_annotations_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.execution_annotations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.execution_annotations_id_seq OWNER TO vietbot;

--
-- Name: execution_annotations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.execution_annotations_id_seq OWNED BY public.execution_annotations.id;


--
-- Name: execution_data; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.execution_data (
    "executionId" integer NOT NULL,
    "workflowData" json NOT NULL,
    data text NOT NULL
);


ALTER TABLE public.execution_data OWNER TO vietbot;

--
-- Name: execution_entity; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.execution_entity (
    id integer NOT NULL,
    finished boolean NOT NULL,
    mode character varying NOT NULL,
    "retryOf" character varying,
    "retrySuccessId" character varying,
    "startedAt" timestamp(3) with time zone,
    "stoppedAt" timestamp(3) with time zone,
    "waitTill" timestamp(3) with time zone,
    status character varying NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    "deletedAt" timestamp(3) with time zone,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.execution_entity OWNER TO vietbot;

--
-- Name: execution_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.execution_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.execution_entity_id_seq OWNER TO vietbot;

--
-- Name: execution_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.execution_entity_id_seq OWNED BY public.execution_entity.id;


--
-- Name: execution_metadata; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.execution_metadata (
    id integer NOT NULL,
    "executionId" integer NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.execution_metadata OWNER TO vietbot;

--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.execution_metadata_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.execution_metadata_temp_id_seq OWNER TO vietbot;

--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.execution_metadata_temp_id_seq OWNED BY public.execution_metadata.id;


--
-- Name: faq; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.faq (
    id integer NOT NULL,
    question text NOT NULL,
    answer text NOT NULL,
    category character varying(100),
    keywords text[],
    view_count integer DEFAULT 0,
    active boolean DEFAULT true
);


ALTER TABLE public.faq OWNER TO vietbot;

--
-- Name: faq_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.faq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_id_seq OWNER TO vietbot;

--
-- Name: faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.faq_id_seq OWNED BY public.faq.id;


--
-- Name: installed_nodes; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.installed_nodes (
    name character varying(200) NOT NULL,
    type character varying(200) NOT NULL,
    "latestVersion" integer DEFAULT 1 NOT NULL,
    package character varying(241) NOT NULL
);


ALTER TABLE public.installed_nodes OWNER TO vietbot;

--
-- Name: installed_packages; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.installed_packages (
    "packageName" character varying(214) NOT NULL,
    "installedVersion" character varying(50) NOT NULL,
    "authorName" character varying(70),
    "authorEmail" character varying(70),
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.installed_packages OWNER TO vietbot;

--
-- Name: intents; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.intents (
    id integer NOT NULL,
    intent_name character varying(50) NOT NULL,
    description text,
    keywords text[],
    response_template text,
    active boolean DEFAULT true
);


ALTER TABLE public.intents OWNER TO vietbot;

--
-- Name: intents_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.intents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.intents_id_seq OWNER TO vietbot;

--
-- Name: intents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.intents_id_seq OWNED BY public.intents.id;


--
-- Name: invalid_auth_token; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.invalid_auth_token (
    token character varying(512) NOT NULL,
    "expiresAt" timestamp(3) with time zone NOT NULL
);


ALTER TABLE public.invalid_auth_token OWNER TO vietbot;

--
-- Name: message_queue; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.message_queue (
    id integer NOT NULL,
    fb_message_id character varying(100) NOT NULL,
    customer_id integer,
    message_text text,
    status character varying(20) DEFAULT 'pending'::character varying,
    retry_count integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    processed_at timestamp without time zone
);


ALTER TABLE public.message_queue OWNER TO vietbot;

--
-- Name: message_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.message_queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_queue_id_seq OWNER TO vietbot;

--
-- Name: message_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.message_queue_id_seq OWNED BY public.message_queue.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO vietbot;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO vietbot;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.order_items (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer NOT NULL,
    unit_price numeric(10,2),
    subtotal numeric(10,2)
);


ALTER TABLE public.order_items OWNER TO vietbot;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_id_seq OWNER TO vietbot;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer,
    order_number character varying(50) NOT NULL,
    status character varying(50) DEFAULT 'pending'::character varying,
    total_amount numeric(10,2),
    shipping_address text,
    note text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.orders OWNER TO vietbot;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO vietbot;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: processed_data; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.processed_data (
    "workflowId" character varying(36) NOT NULL,
    context character varying(255) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.processed_data OWNER TO vietbot;

--
-- Name: products; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.products (
    id integer NOT NULL,
    sku character varying(50) NOT NULL,
    name character varying(200) NOT NULL,
    description text,
    price numeric(10,2),
    stock_quantity integer DEFAULT 0,
    category character varying(100),
    tags text[],
    image_url character varying(500),
    active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.products OWNER TO vietbot;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO vietbot;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.project (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(36) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.project OWNER TO vietbot;

--
-- Name: project_relation; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.project_relation (
    "projectId" character varying(36) NOT NULL,
    "userId" uuid NOT NULL,
    role character varying NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.project_relation OWNER TO vietbot;

--
-- Name: recent_orders; Type: VIEW; Schema: public; Owner: vietbot
--

CREATE VIEW public.recent_orders AS
 SELECT o.id,
    o.customer_id,
    o.order_number,
    o.status,
    o.total_amount,
    o.shipping_address,
    o.note,
    o.created_at,
    o.updated_at,
    c.name AS customer_name,
    c.phone AS customer_phone
   FROM (public.orders o
     JOIN public.customers c ON ((o.customer_id = c.id)))
  WHERE (o.created_at > (CURRENT_DATE - '30 days'::interval))
  ORDER BY o.created_at DESC;


ALTER TABLE public.recent_orders OWNER TO vietbot;

--
-- Name: role; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    scope character varying(255) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.role OWNER TO vietbot;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO vietbot;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO vietbot;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vietbot
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.settings (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    "loadOnStartup" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.settings OWNER TO vietbot;

--
-- Name: shared_credentials; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.shared_credentials (
    "credentialsId" character varying(36) NOT NULL,
    "projectId" character varying(36) NOT NULL,
    role text NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.shared_credentials OWNER TO vietbot;

--
-- Name: shared_workflow; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.shared_workflow (
    "workflowId" character varying(36) NOT NULL,
    "projectId" character varying(36) NOT NULL,
    role text NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.shared_workflow OWNER TO vietbot;

--
-- Name: system_config; Type: TABLE; Schema: public; Owner: vietbot
--

CREATE TABLE public.system_config (
    id integer NOT NULL,
    config_key character varying(100) NOT NULL,
    config_value jsonb,
    description text,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.system_config OWNER TO vietbot;

--
-- Name: system_config_id_seq; Type: SEQUENCE; Schema: public; Owner: vietbot
--
```
