--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO etag_master;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO etag_master;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO etag_master;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO etag_master;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO etag_master;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO etag_master;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO etag_master;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO etag_master;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO etag_master;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO etag_master;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO etag_master;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO etag_master;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL
);


ALTER TABLE authtoken_token OWNER TO etag_master;

--
-- Name: data_store_dumb_model; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE data_store_dumb_model (
    id integer NOT NULL
);


ALTER TABLE data_store_dumb_model OWNER TO etag_master;

--
-- Name: data_store_dumb_model_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE data_store_dumb_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE data_store_dumb_model_id_seq OWNER TO etag_master;

--
-- Name: data_store_dumb_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE data_store_dumb_model_id_seq OWNED BY data_store_dumb_model.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO etag_master;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO etag_master;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO etag_master;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO etag_master;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO etag_master;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO etag_master;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO etag_master;

--
-- Name: locations; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE locations (
    location_id integer NOT NULL,
    name character varying(255) NOT NULL,
    latitude double precision,
    longitude double precision,
    active boolean
);


ALTER TABLE locations OWNER TO etag_master;

--
-- Name: locations_location_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE locations_location_id_seq OWNER TO etag_master;

--
-- Name: locations_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE locations_location_id_seq OWNED BY locations.location_id;


--
-- Name: queue_run_model; Type: TABLE; Schema: public; Owner: etag_master
--

CREATE TABLE queue_run_model (
    id integer NOT NULL
);


ALTER TABLE queue_run_model OWNER TO etag_master;

--
-- Name: queue_run_model_id_seq; Type: SEQUENCE; Schema: public; Owner: etag_master
--

CREATE SEQUENCE queue_run_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE queue_run_model_id_seq OWNER TO etag_master;

--
-- Name: queue_run_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etag_master
--

ALTER SEQUENCE queue_run_model_id_seq OWNED BY queue_run_model.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: data_store_dumb_model id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY data_store_dumb_model ALTER COLUMN id SET DEFAULT nextval('data_store_dumb_model_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: locations location_id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY locations ALTER COLUMN location_id SET DEFAULT nextval('locations_location_id_seq'::regclass);


--
-- Name: queue_run_model id; Type: DEFAULT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY queue_run_model ALTER COLUMN id SET DEFAULT nextval('queue_run_model_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add token	7	add_token
20	Can change token	7	change_token
21	Can delete token	7	delete_token
22	Can add run_model	8	add_run_model
23	Can change run_model	8	change_run_model
24	Can delete run_model	8	delete_run_model
34	Can add reader location	12	add_readerlocation
35	Can change reader location	12	change_readerlocation
36	Can delete reader location	12	delete_readerlocation
37	Can add readers	13	add_readers
38	Can change readers	13	change_readers
39	Can delete readers	13	delete_readers
40	Can add tag reads	14	add_tagreads
41	Can change tag reads	14	change_tagreads
42	Can delete tag reads	14	delete_tagreads
43	Can add tags	15	add_tags
44	Can change tags	15	change_tags
45	Can delete tags	15	delete_tags
46	Task Admin	16	task_admin
48	Catalog Admin	19	catalog_admin
51	Data Store Admin	22	datastore_admin
52	Can Run etagq.tasks.tasks.etagDataUpload	16	etagq_tasks_tasks_etagDataUpload
53	Can Run cybercomq.tasks.tasks.add	16	cybercomq_tasks_tasks_add
54	Can add task model	16	add_taskmodel
55	Can change task model	16	change_taskmodel
56	Can delete task model	16	delete_taskmodel
57	Can add catalog model	19	add_catalogmodel
58	Can change catalog model	19	change_catalogmodel
59	Can delete catalog model	19	delete_catalogmodel
60	Create Catalog Collections	19	catalog_create
61	Can add data store	22	add_datastore
62	Can change data store	22	change_datastore
63	Can delete data store	22	delete_datastore
64	Create DataStore Databases and Collections	22	datastore_create
65	Can add locations	23	add_locations
66	Can change locations	23	change_locations
67	Can delete locations	23	delete_locations
68	Can add animals	24	add_animals
69	Can change animals	24	change_animals
70	Can delete animals	24	delete_animals
71	Can add upload location	25	add_uploadlocation
72	Can change upload location	25	change_uploadlocation
73	Can delete upload location	25	delete_uploadlocation
74	Can add tag owner	26	add_tagowner
75	Can change tag owner	26	change_tagowner
76	Can delete tag owner	26	delete_tagowner
77	Can add animal hit reader	27	add_animalhitreader
78	Can change animal hit reader	27	change_animalhitreader
79	Can delete animal hit reader	27	delete_animalhitreader
83	Can add tagged animal	29	add_taggedanimal
84	Can change tagged animal	29	change_taggedanimal
85	Can delete tagged animal	29	delete_taggedanimal
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
4	pbkdf2_sha256$12000$leicGh8ANeEZ$fHXzzUMctgT3Pg6G+77jNVO0RGGNPSmgEN5oR8brzlw=	2016-09-26 21:29:14+00	t	nilutpal				t	t	2016-09-26 21:29:14+00
5	pbkdf2_sha256$12000$xG6grK1j6Pgp$J7OgUJiv8jZce4V8Hwpl0nC5XoLWe1Krj08OXYqn3/g=	2017-09-14 16:21:41.755507+00	t	tdpearson	Tyler	Pearson	tdpearson@ou.edu	t	t	2017-09-14 16:21:04+00
1	pbkdf2_sha256$12000$mg0jAcKctlUf$gpjiXyQcjTQUI3uNMia2pSP1OPAMYgOQyHStI/EsbXU=	2017-10-16 04:22:18.686845+00	t	admin			mbstacy@gmail.com	t	t	2015-10-01 15:22:55.321766+00
3	pbkdf2_sha256$12000$iE9Ede24sZhM$BnhyVf/447eEIqaJogcS8ne0d5yq4QoEvtDqBIhDb8A=	2017-04-17 20:11:45.930737+00	t	nick	Nick			t	t	2015-11-24 22:03:00+00
2	pbkdf2_sha256$15000$dKGNjt0HOmSq$cw7LxN5mQGQlz3XEg7zScmM1eIVBI4eiMgglPb7gBlc=	2018-01-28 20:38:57.699018+00	t	sarah	Sarah	Jung		t	t	2015-11-24 22:01:57+00
6	pbkdf2_sha256$15000$z7DpdhtC9SZE$xVBCLy+gEJ3oF5/ZiaZivMzxr6FZGFTDPd30zY4WMAA=	2018-05-18 21:02:56.446348+00	t	pramod			byakodpramod@gmail.com	t	t	2017-11-30 05:28:42.906739+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
4	3	24
5	3	22
6	3	23
7	2	24
8	2	22
9	2	23
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY authtoken_token (key, user_id, created) FROM stdin;
11de837441dc2a678aff8fe34f51c6cad0af4450	1	2016-11-28 22:58:01.231239+00
83be406d8e4619a345b70b9a5809ca00328567f7	2	2016-11-30 01:56:16.886932+00
348f8676416103ef8edb962d5763fae238111ba2	3	2016-11-30 22:10:53.523518+00
5a52c176b80014925bd436e2d25f523626d7c78e	5	2017-09-14 16:21:42.219403+00
fa958d3a507f3cc0312371b8ca54194c2cc4f8e7	6	2017-11-30 05:29:00.175687+00
\.


--
-- Data for Name: data_store_dumb_model; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY data_store_dumb_model (id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2015-11-24 22:01:57.134911+00	1	4	2	sarah	1	
2	2015-11-24 22:02:43.619868+00	1	4	2	sarah	2	Changed first_name, last_name and user_permissions.
3	2015-11-24 22:03:00.087412+00	1	4	3	nick	1	
4	2015-11-24 22:03:36.369387+00	1	4	3	nick	2	Changed first_name.
5	2016-02-25 21:34:06.698748+00	1	4	3	nick	2	Changed is_staff, is_superuser and user_permissions.
6	2016-02-25 21:34:20.059433+00	1	4	2	sarah	2	Changed is_staff and is_superuser.
7	2016-09-26 21:29:14.778263+00	3	4	4	nilutpal	1	
8	2016-09-26 21:29:24.24438+00	3	4	4	nilutpal	2	Changed is_staff and is_superuser.
9	2016-11-12 04:06:47.850694+00	1	4	1	admin	2	Changed password.
10	2016-11-28 22:57:48.261676+00	1	7	88869d9fba34d21ffb21fcc51aa233c63a7bd2aa	88869d9fba34d21ffb21fcc51aa233c63a7bd2aa	3	
11	2016-11-28 22:57:48.309147+00	1	7	dffdf56adee6333789fc2e7c7a17eb386cc91af9	dffdf56adee6333789fc2e7c7a17eb386cc91af9	3	
12	2016-11-28 22:57:48.313491+00	1	7	eb35d2d358594a00afafac51c6e75cf267c689e7	eb35d2d358594a00afafac51c6e75cf267c689e7	3	
13	2017-09-14 16:21:04.332424+00	1	4	5	tdpearson	1	
14	2017-09-14 16:21:26.37228+00	1	4	5	tdpearson	2	Changed first_name, last_name, email, is_staff and is_superuser.
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	token	authtoken	token
8	run_model	queue	run_model
12	reader location	etag	readerlocation
13	readers	etag	readers
14	tag reads	etag	tagreads
15	tags	etag	tags
16	task model	cybercom_queue	taskmodel
19	catalog model	catalog	catalogmodel
22	data store	data_store	datastore
23	locations	etag	locations
24	animals	etag	animals
25	upload location	etag	uploadlocation
26	tag owner	etag	tagowner
27	animal hit reader	etag	animalhitreader
29	tagged animal	etag	taggedanimal
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-02-19 04:37:51.684068+00
2	auth	0001_initial	2018-02-19 04:37:51.734498+00
3	admin	0001_initial	2018-02-19 04:37:51.780258+00
4	sessions	0001_initial	2018-02-19 04:37:51.829964+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
0c4i5sggfglls3u6sp8dh9uvz7vc2jl8	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-15 16:21:27.190134+00
widkp523gal38qcbon8f4o4fwytwrrbo	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-04-21 20:34:00.388391+00
9kae9768iw087t9akfss9i1e7u2341ad	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-15 16:49:36.22714+00
hossrar3cjk2tpot6myijkgt2my6p3a8	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-03 15:23:31.045764+00
hrn4hizlazshhdeorjcgb9bi4kj0j5w7	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-15 22:41:49.216246+00
otyvb6t2qs3ksn0asqyoacb609vzsmz8	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-16 18:07:36.347545+00
2r6ypkagbmo8irwpmletlinv8tp179ei	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-21 20:08:11.58343+00
gc4lkge66pvsha7ap9y05q3aorc8r29b	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-22 17:51:45.427051+00
d17e2izic4fl4wlk7e8v6ukt2vnee6oi	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-10-28 16:22:27.171328+00
gy33r7bj1dq999qsr0nkwz4a8mz9b7lj	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-04-29 21:56:42.17133+00
3tosgtvj01121vzd4no2r5rt95dkkkjg	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-11-04 18:50:52.365151+00
yjtprc0nzs058dmecxrjb8al6aaphq0k	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-11-12 18:43:35.84589+00
4780wm7ky16jlab0mbsp39ojrccx4x2w	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-12-01 21:42:19.635176+00
58yazx81yewuuk8l46r0uny8idb3auss	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-05-06 14:54:35.515145+00
uh9y8rdl4tffsx3n4dj0w62gp211hk79	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-12-08 22:05:35.122539+00
5znila7rm91n6gi7h69bcsjac698redp	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2015-12-10 04:31:54.492242+00
48t2tx944a20xq2ywip1jxddkl6a0idg	MTQ1NWMxZjZlOTE1NzAyZWI3MjYwN2IwNDllNmQ0NTkyNzU3NTYzZTp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-05-08 10:29:59.306321+00
kizi4q6c4qx1w8q2jplzszurh0u2fqjo	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2015-12-29 19:49:16.304419+00
anfkx0how3fxaya0o9bylm6ox5hay4uw	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-01-05 15:11:34.916045+00
6zbizvrjfk65g6tklg0jlkhi5obsgsro	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-01-05 22:12:15.323131+00
y2gsa9k51u5v24ko8xi7co6cl9f8nd4s	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-02-03 16:46:22.634956+00
5h0masnedqqkhppb8nmxcbu3xdm6kq6z	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-02-07 07:30:06.548386+00
tttyohjpy1m65sj0i3te16jx9h6i2qcc	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-02-18 21:21:18.189119+00
dtwo7yiw6792t74ldkd2bcjpr2i1reh6	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-02-19 20:27:24.714875+00
qq3l5o9ncpb3x5vdkpdw4ycdn7sygchi	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-03-07 16:43:31.580059+00
0k0mbax9yq2ph8jxj0lxku219tdves64	MGM3ZmYxNzE3ZThjOWE2MGI4YWEwMzVjYjBkNmZjMzc5MmIyZjFmYzp7Il9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-03-08 17:04:35.894074+00
sjln61ysbowqf14scz2fur6qljzmf0s8	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-03-10 21:24:49.313026+00
767p1io7lvy7cap5om1hweifgs5509b0	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-03-10 21:32:49.416671+00
5io7dll5t330ca8jhauh657vz95znf8c	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-03-25 16:10:47.099042+00
h294kg64uou0gwpmojt1afwmk1hdwqzi	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-04-06 08:12:37.932292+00
irpn37qdooeklexkr6tb5zc66bk618xs	MmE5ODEwYmU4ZmQ3NGQzY2Q1NTk2N2QwZTZkNGY4ZDYzOTAwMTEwZTp7fQ==	2016-04-07 20:35:35.165446+00
vlcbq67cekgh4kv1z3e1hxfnj8s01zh3	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-04-20 21:53:26.279747+00
t5r2zllhf727nf3xw1s4ao1noaght9t3	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-04-21 20:33:19.456805+00
zgm3cm4weo3ap04jfn6xl596vh4vc5pw	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-07 16:41:44.150544+00
8s7yc4tdv9qzc6ceqabcga83s6fmu6or	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-12-30 19:04:20.607137+00
jvxzfkt0ity96b52ttli3p6t6ma6lhgf	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-10-10 03:03:39.197867+00
k8aoxszbktj7ym79ingr3xs7eeo38z65	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-10 20:19:52.555952+00
zjenf01kv8olph4rktbty0utd8ux66bu	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-06-01 02:53:46.143086+00
w3rpkuagk3kddittmpib4km85himm8q5	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-02-01 17:26:45.374113+00
1ekk6aab7byf6uzjgh3jekym5atf9xwt	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-12 18:33:31.713829+00
7mp5rxne9dja8bp246gg83qvd59kv4uo	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-10-13 03:01:46.65464+00
9vmwbj03jwf9vdhiqb397rvbu12q6wd8	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-11-16 19:43:47.947535+00
thaax0t3ijydlce2j31sgcbsoo2pw2do	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-06-09 20:13:25.155267+00
msnua5ahy8pkhpn2txztwuexajxwza1s	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-25 22:48:58.037841+00
a6f8p291s7zessfofdudm5ikmsc2rspo	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-06-09 20:17:23.803386+00
fm4z008sid82u5th1e566zadxd89kjao	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-06-22 15:20:17.005668+00
u6mm6uhu2cyftib2d94mdhrqkobf82fi	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-06-28 16:55:13.75443+00
x00stz3t6uiyeinpfs8ppftfaut5e2im	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-10-27 15:58:54.826252+00
x0yvckuekw7gbib2mc6cu2oxz7yum22w	MmE5ODEwYmU4ZmQ3NGQzY2Q1NTk2N2QwZTZkNGY4ZDYzOTAwMTEwZTp7fQ==	2016-07-15 16:53:12.297461+00
6hblelufujzjv75zhxjofypn4opt0odc	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-07-27 22:43:23.167565+00
weortcc2zk2sny5ea30o8vrglrjnne9h	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-08-09 15:15:42.2134+00
bza51mocdjd2kr99val7vng6r67qwbk5	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-27 16:31:15.425882+00
ldh38iacbpwg37y22mxqjb1f87catdb6	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-09-01 15:17:08.146927+00
5pqazdop2c9mm4rxxm5pw1fkkhwld8zg	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-09-01 16:51:38.282297+00
d8fomxs700ymvvjfmsc5voi89j4otz9p	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-28 05:22:46.198224+00
1suhf5dmaimbq5tx953glduqhbr77kmk	Y2QyMGU5ZGQ2YmZiYjVlOWUzY2RiZTE3YThmY2RkNWM2Yzk2ZDcyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-09-21 14:58:22.289426+00
hfups3l2nehb59rdazpyxh0fr2jhwiz5	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-28 14:09:15.228383+00
xrw2pqe22ig0m5m2i1b281ly1yng1agr	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-10-28 14:13:54.862081+00
1g8t8dlfzm3m7ebqhc8xib18b0adbj6n	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-10-28 18:14:52.464944+00
jpy9239mffjud7bc729rh7gwvb7ucezv	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-10-31 16:35:39.65535+00
mcavqkyt3ejt70uk5t4it419myydorn5	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-09-23 20:33:58.146125+00
akfyy0j0imd0431e849132s2diz9zu97	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-11-03 18:42:25.421967+00
cnu3k1jprmuhkhit7mwimvz4ecu2ug5b	OWIwNjZmM2YyM2QzMGE0ZTZkYzZmYWFjYTc0ZWE5Y2EwNGFjNjc1YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-11-04 15:09:34.362617+00
cpwvs21l8r5acxma8ame6nz48fp7rnfx	MmE5ODEwYmU4ZmQ3NGQzY2Q1NTk2N2QwZTZkNGY4ZDYzOTAwMTEwZTp7fQ==	2016-11-04 16:22:38.643027+00
zkyj66v2a11wndnpalf7aeev3j3d229n	ZWJlOTA5MDE4N2ZmY2JkMWU2ZTRjNDZiZDhhZDkyNjYyZjAzN2E3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-11-04 18:12:43.765433+00
p9zfb0q8c8srlak6ok9gwup50ydo95y3	MmE5ODEwYmU4ZmQ3NGQzY2Q1NTk2N2QwZTZkNGY4ZDYzOTAwMTEwZTp7fQ==	2016-11-16 19:27:25.5527+00
q208kepxaw257jwbux23446lnpi61lp2	MmE5ODEwYmU4ZmQ3NGQzY2Q1NTk2N2QwZTZkNGY4ZDYzOTAwMTEwZTp7fQ==	2016-11-25 17:09:57.255387+00
mmnupfagdzyzacvvcqtrqrru95zwa5o6	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-01-12 00:17:58.616499+00
2ngsbficpx39wn9y42eqc9lz2xe3u3cv	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-02-13 19:43:23.63247+00
hv48k63e85xx88ukerx0p77a5dzwgivk	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-02-21 17:04:41.88948+00
rxnvswmmrdiepu8r1jbfvjdz5aa7m4th	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-02-28 19:15:35.168305+00
dvy7dd85e0lppuw4xtt1v5ocq6oabupv	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-02-28 21:04:24.815289+00
yi4tz4f8uzd7nhfcpkmv54i7z9wojg5j	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-02-28 21:29:27.46539+00
dgu92hogj7gehdphp4tyw1dsmw6fzze5	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-03-01 19:38:51.866016+00
ak1vxl8og1yqce8sjc7ip5yp95moe0u9	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-03-01 20:02:53.817362+00
egetcwv7o5621uysl49g4e7vbdgmownz	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-03-09 19:45:20.396462+00
1zgx3sr8b0pzlmen68cj34zdofukaf83	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-03-15 18:05:23.377503+00
u3gis7jmm98qa13kxglleyrmm5ua0j5l	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-03-15 20:36:33.815339+00
pfp8u3p9pm42aq8busdib04j08zmqcla	YmEzNGNkOWNhOTQ2Y2M0NmQ2ZDczNWJmNzExNDM0MWJhZWQ2MTJlNjp7fQ==	2017-03-16 03:15:20.198793+00
f9ogddizya3u3ifdaqudtxeavx4sv759	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-04-06 01:22:19.723708+00
hly9z9z5k3wxpifzy6bzallc4yxtymfe	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-11-28 18:21:34.831495+00
1z6o2kshhjdil7d3eo0gcg8hobl5pmuw	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-11-28 19:45:25.727804+00
5n8gabkq2oqufjj2x054i9ygo564ivpi	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-11-28 20:10:36.459376+00
itxeam072pykyqt03xzhsq40nkh00r8x	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-12-02 20:32:07.988439+00
yf9geautr8ft3p2sfssstfpomgly4c4u	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-12-12 22:57:36.252868+00
kgbz0qume8tjkpav9jvi337fs4lggwlf	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-12-14 01:56:16.022917+00
itbb4i3kwk3vnmmkdowj9z3y7r324ghx	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-04-06 04:29:25.138326+00
inij6gv4lhxrshfzbxp61kyrdl401nzs	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-04-10 17:41:05.700045+00
5hwji2fbuw61fu4h90hd9fac4yfdmu6w	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-04-13 15:45:24.045231+00
gqucj1xccfv8rngnsa8udqhrxlcp6ptn	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2016-12-26 19:53:23.867572+00
a4mm2uhub144ky6ol0mntek61osw5vx1	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2016-12-26 19:54:19.542777+00
n6a3p1zqlwb5sr6bbuh9vq20xvu3erzr	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-04-13 17:25:25.989967+00
3y5fc37jfml91zpoi5kxenga8sc9r0wa	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-04-17 16:15:37.684094+00
z8615p9lvjsjv313kx79ix9mua2t1whl	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-04-17 16:50:46.793305+00
bkzkcsjemymp068aoh2ysr99jeg5d16f	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-04-20 03:01:02.489302+00
v3tsbyphd7pkleroa5m338a9u1bqh9p3	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-04-20 19:23:49.35091+00
c60kzn8zwg9oesbhlt2uxa7ffbkovokl	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-04-24 16:08:33.381554+00
jrxkpafemiq1ii58gilfnnwzg9s5u748	ZWQxYmM1M2MyZDIxOTA1MjgxMTFmYWQ1MzM4MDk0YTc4MDU2ZTVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=	2017-05-01 20:11:45.935827+00
63k92zr6kytvec25w37rl7r34q8g02i3	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-05-04 18:10:36.402366+00
770armk349ck5aeg4igwn04tjvsg7wyj	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-05-31 18:19:01.931443+00
xfp6ontbduwkn96rr14v1lebnxt4o4bq	ZmZhMWI0OGFiOWYyMDRlZWNkMTZlZjgxMTAzYTkxMzg1NmQ4YWYzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjExOTU0NGE2MGU3ZGQ1ZDgxNTc5YzA5N2RjMjg2MTIxYTgzYTQ5YWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2017-11-20 04:39:12.607573+00
uz2kos7kvvrjuyjppjambzri7sw2jb9e	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-07-15 19:35:11.927151+00
e15sf96yfwp18mduf20gvznttl1tpx5m	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-09-04 14:29:38.388512+00
l6sa3lgtjs88fz0lw9x52r81va0jm0pt	ODU0YmY4ODU4NGMzYTQ3ZTM2MmI1ZDg0MDdmNTMzOWRlYTBhNTBlNDp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-21 18:34:39.877583+00
7i7fqa67sanpbzrxhs0bnhjclmcx06la	ODU0YmY4ODU4NGMzYTQ3ZTM2MmI1ZDg0MDdmNTMzOWRlYTBhNTBlNDp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-21 18:35:32.916971+00
34fxmg028avbp9uk1dr9xwcmcl86kgcz	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-09-23 21:34:05.975907+00
qlejkdcpw5bbk3g8soapkzh34j1qh5k3	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-10-05 19:04:50.79864+00
2iy0l8m0r3sh2iflo1scrhmrnszkfxbh	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-10-26 15:34:32.07591+00
tyy62s0k88yiuaa42x8fbfbp3brtw90u	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-10-26 18:44:40.738298+00
hzbiwgmvcyas7zje2l2ximfrzkzkvte0	OWUwN2YzOGUyNWQ0YTMzMTdhNGVkODE3ZDk3NzVlYWRhNzliYTBmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2017-10-30 04:22:18.698707+00
f8gfj8yemwkltj0a5r47r2c3xciodxfj	Zjk0M2UyNjFlYTc1Yjk0ZDdkODk0NGIyNmJiMDNlYjQ4ZjgwZmY4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-10-30 22:45:21.599382+00
w0vnpu204b5z0z44v5xqs5or83vu6pw5	MmYzOGJhZTkwMTNhY2Y0YWFlNWMwMTM3ODUwMTA0YWM5NDA1MTI4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-10-31 21:45:53.958214+00
hvjzrn8zebgerykg2u97j9cxqcsfhq8s	MmYzOGJhZTkwMTNhY2Y0YWFlNWMwMTM3ODUwMTA0YWM5NDA1MTI4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2017-11-02 04:32:21.950621+00
xpr99t21ccapatxc60sygxasxg7g6owj	ZmZhMWI0OGFiOWYyMDRlZWNkMTZlZjgxMTAzYTkxMzg1NmQ4YWYzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjExOTU0NGE2MGU3ZGQ1ZDgxNTc5YzA5N2RjMjg2MTIxYTgzYTQ5YWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2017-11-02 17:22:41.179115+00
mnuya0n2vo2ys33tnn4mp757577k18rf	ZmZhMWI0OGFiOWYyMDRlZWNkMTZlZjgxMTAzYTkxMzg1NmQ4YWYzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjExOTU0NGE2MGU3ZGQ1ZDgxNTc5YzA5N2RjMjg2MTIxYTgzYTQ5YWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2017-11-05 02:08:21.629654+00
m1xtzrqk6xd31yzy4d9uhbdvov5e4jwl	ZmZhMWI0OGFiOWYyMDRlZWNkMTZlZjgxMTAzYTkxMzg1NmQ4YWYzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjExOTU0NGE2MGU3ZGQ1ZDgxNTc5YzA5N2RjMjg2MTIxYTgzYTQ5YWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2017-11-10 01:40:32.597353+00
g2eahrsq2llx53g8cei1nq0xhok9a8ag	MDgzMGIzODg4YTI4ZjE0NzUxNzU5MjE5OGEwNWY3MmRiZTU1NmJmNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZjBlOTIxODIxMzZhZjhlZTM4MWMwMGZiYTc3ZGM2ZWQxNDE2NzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2017-12-13 01:24:26.595918+00
42s0agef8qia2dd4lo1af7393vd2ans0	MDgzMGIzODg4YTI4ZjE0NzUxNzU5MjE5OGEwNWY3MmRiZTU1NmJmNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZjBlOTIxODIxMzZhZjhlZTM4MWMwMGZiYTc3ZGM2ZWQxNDE2NzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2017-12-13 19:33:38.533068+00
5iv29lylwtvrx96nl51hndp84jrvy3sw	NjM0YjRiZTQ4Y2Q3N2U2ZDcwMWFjMGZhMjcwODRmYjNiMDlkZTc3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZTg0OGVmYTUxNWQ5YjIxMGZjZDViYjRmM2M2Y2M0YzRiYTFlOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjZ9	2017-12-14 06:58:19.392701+00
q8yuq68c8bb95k3xwuv41wd5xgw7f3xj	NjM0YjRiZTQ4Y2Q3N2U2ZDcwMWFjMGZhMjcwODRmYjNiMDlkZTc3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZTg0OGVmYTUxNWQ5YjIxMGZjZDViYjRmM2M2Y2M0YzRiYTFlOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjZ9	2018-01-04 06:27:19.474983+00
rwxny795xkaqtpm9b9xlkgyd95un31xa	NjM0YjRiZTQ4Y2Q3N2U2ZDcwMWFjMGZhMjcwODRmYjNiMDlkZTc3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZTg0OGVmYTUxNWQ5YjIxMGZjZDViYjRmM2M2Y2M0YzRiYTFlOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjZ9	2018-02-12 06:11:24.464976+00
o529zn3rtysvrbcf1rvnc50izht2dc23	NjM0YjRiZTQ4Y2Q3N2U2ZDcwMWFjMGZhMjcwODRmYjNiMDlkZTc3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZTg0OGVmYTUxNWQ5YjIxMGZjZDViYjRmM2M2Y2M0YzRiYTFlOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjZ9	2018-05-07 03:44:01.844577+00
hdwbdygzp6hl76k99c5cl04q2ozyktrs	NjM0YjRiZTQ4Y2Q3N2U2ZDcwMWFjMGZhMjcwODRmYjNiMDlkZTc3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZTg0OGVmYTUxNWQ5YjIxMGZjZDViYjRmM2M2Y2M0YzRiYTFlOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjZ9	2018-06-01 21:02:56.455407+00
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY locations (location_id, name, latitude, longitude, active) FROM stdin;
\.


--
-- Data for Name: queue_run_model; Type: TABLE DATA; Schema: public; Owner: etag_master
--

COPY queue_run_model (id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('auth_permission_id_seq', 85, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('auth_user_id_seq', 6, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 9, true);


--
-- Name: data_store_dumb_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('data_store_dumb_model_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 14, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('django_content_type_id_seq', 29, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('django_migrations_id_seq', 4, true);


--
-- Name: locations_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('locations_location_id_seq', 1, false);


--
-- Name: queue_run_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etag_master
--

SELECT pg_catalog.setval('queue_run_model_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: data_store_dumb_model data_store_dumb_model_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY data_store_dumb_model
    ADD CONSTRAINT data_store_dumb_model_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);


--
-- Name: queue_run_model queue_run_model_pkey; Type: CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY queue_run_model
    ADD CONSTRAINT queue_run_model_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_like; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX authtoken_token_key_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: etag_master
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: etag_master
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO etag_master;


--
-- PostgreSQL database dump complete
--

