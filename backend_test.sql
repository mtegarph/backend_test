PGDMP         
            
    |         	   crud_test    14.13 (Homebrew)    14.13 (Homebrew) P    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385 	   crud_test    DATABASE     T   CREATE DATABASE crud_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE crud_test;
                newuser    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                muhammadtegarputrantohadi    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   muhammadtegarputrantohadi    false    3            �            1259    16420    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    newuser    false    3            �            1259    16427    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    newuser    false    3            �            1259    16478    comments    TABLE     �   CREATE TABLE public.comments (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    user_id bigint NOT NULL,
    comment text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.comments;
       public         heap    newuser    false    3            �            1259    16477    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          newuser    false    3    225            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          newuser    false    224            �            1259    16452    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    newuser    false    3            �            1259    16451    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          newuser    false    3    221            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          newuser    false    220            �            1259    16444    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    newuser    false    3            �            1259    16435    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    newuser    false    3            �            1259    16434    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          newuser    false    3    218            �           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          newuser    false    217            �            1259    16387 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    newuser    false    3            �            1259    16386    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          newuser    false    3    210            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          newuser    false    209            �            1259    16404    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    newuser    false    3            �            1259    16499    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    newuser    false    3            �            1259    16498    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          newuser    false    227    3            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          newuser    false    226            �            1259    16464    posts    TABLE     �   CREATE TABLE public.posts (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.posts;
       public         heap    newuser    false    3            �            1259    16463    posts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          newuser    false    223    3            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          newuser    false    222            �            1259    16411    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    newuser    false    3            �            1259    16394    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    newuser    false    3            �            1259    16393    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          newuser    false    3    212            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          newuser    false    211            �           2604    16481    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    224    225    225            �           2604    16455    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    220    221    221            �           2604    16438    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    218    217    218            �           2604    16390    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    210    209    210            �           2604    16502    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    226    227    227            �           2604    16467    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    222    223    223            �           2604    16397    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          newuser    false    212    211    212            �          0    16420    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          newuser    false    215   V]       �          0    16427    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          newuser    false    216   j       �          0    16478    comments 
   TABLE DATA           Y   COPY public.comments (id, post_id, user_id, comment, created_at, updated_at) FROM stdin;
    public          newuser    false    225   $j       �          0    16452    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          newuser    false    221   �j       �          0    16444    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          newuser    false    219   �j       �          0    16435    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          newuser    false    218   �j       �          0    16387 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          newuser    false    210   k       �          0    16404    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          newuser    false    213   �k       �          0    16499    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          newuser    false    227   �k       �          0    16464    posts 
   TABLE DATA           Q   COPY public.posts (id, user_id, title, body, created_at, updated_at) FROM stdin;
    public          newuser    false    223   �k       �          0    16411    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          newuser    false    214   %l       �          0    16394    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          newuser    false    212   Bl       �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 8, true);
          public          newuser    false    224            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          newuser    false    220            �           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          newuser    false    217            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);
          public          newuser    false    209            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          newuser    false    226            �           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 3, true);
          public          newuser    false    222            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          newuser    false    211                       2606    16433    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            newuser    false    216                       2606    16426    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            newuser    false    215                       2606    16485    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            newuser    false    225                       2606    16460    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            newuser    false    221                       2606    16462 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            newuser    false    221            
           2606    16450    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            newuser    false    219                       2606    16442    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            newuser    false    218            �           2606    16392    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            newuser    false    210            �           2606    16410 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            newuser    false    213                       2606    16506 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            newuser    false    227                       2606    16509 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            newuser    false    227                       2606    16471    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            newuser    false    223                        2606    16417    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            newuser    false    214            �           2606    16403    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            newuser    false    212            �           2606    16401    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            newuser    false    212                       1259    16443    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            newuser    false    218                       1259    16507 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            newuser    false    227    227            �           1259    16419    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            newuser    false    214                       1259    16418    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            newuser    false    214                       2606    16486 !   comments comments_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_post_id_foreign;
       public          newuser    false    3600    223    225                       2606    16491 !   comments comments_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_foreign;
       public          newuser    false    225    3579    212                       2606    16472    posts posts_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_user_id_foreign;
       public          newuser    false    212    3579    223            �   �  x��\[s�H~N~���-.�fk$K`�A#Ľ�*%@6BH"х˯���Z���4vM6Ã��nN���wn���n�%[�/�f���w�F�a�x����6���_��g����3[�;�<�W!3���(�)��ݍBI(�x��Fz���x!�??�P�vA!����ظX{�:z��~}I�C�ڇb>��|���&�[�׻r?����׾�0�͖r��Ʊܛs˞:��1�G�x���A`��ҳ�����,Ʊ�Uk��Z�����7�;�'���տ��= �k�e��f�,X%;�Iw�Y��ܓWɲ���yNbΝA������{�-G�}����yvd�a�?B��z~��j��ޜg���n�	���}s#�Mz��=�X"������$��f~pm��X鑖5��ɚb��jO='Jk���p�9�4WV�d��!��a-�q}4�@������h�z��(�Z�����{�7�d蛪�ֶ��AIݵ�x�����i��BI=��̀ߑ�%��hI��y��C��/��j�>�EO��}w�\0��r�+a9���`���{�1�� �O"bG�u5��=��S�)�譀o���87t�k�V����Yu>�\���8B����q�����<7�u8����
�Vc&�h�r®z>�*�a�u�l�r�MN+��z\i�g�ٶ�'י��w����drÏ��]��[Ȕ�̓����x�g���8�<=�70��ލ��$�<f���������n�^�`;=� �Ñ���u	/`��+��A/0f���sH��{P/�*~��9�yMW��c'����p%.|�\?�}rX/9��z����>�y�}9��$?��]����T�����׋#�a�'�f|��_�cxf��LG�38�)��k�g��zf�(��v�I��y.����f���~�~���W3Лk+�G%�#�90���V��CZ��b��ix����;!��ܤ��� |�Y|�\����9⽉3Ȝ{�}m6����ܔKD7㜰���1N*�B�e����L�x�쑌Ak"}���ـ�bnO�&\�u��zH�z���~�	��=�[aNj|DN��r	3�?9�د6�F�!��٭�d�a�3y4_'�ωK�����?��@��.�hu L@ɦp�a��+8${ޝ�qO���X�ˉ�g��g�:�,I0��;�ׄk�����3�?(V�l���{r��8>�+<p'5q����c�A��h=���_=g`����n7߂<�J�1����wr�e����S��>2� C�eI�v�@�|T�U�qy<��.�,un��r���!�3p�y���e|f��K^��5=����4V� ��|��gw�o�s���>@��ڳ�����_{8�?�'����K!7��������y�_����L�����r +�a?��`)���8�)�x|>��)���<��7����{CNƢ��b����i�f�S�Rk^�,� ߮T�	��D�'�	��k�o��rv�}���o�V�7	�)5�ʣ������ki:�����W���<��ɋ/Tؽ�s�����wq�(�)��_��Y�K���ė���Z�����w�a?{�fS���C�V��5}������R�sG��\&p�m6yOP�J�	�AD��~��P�ƱBvSV�F�����u����(�ѧ�����gf���<}������n��I�{�3��y��B	�A����Ql�����	�;��|bz�O��"���W#|.}C������ߞ6��������c:�O�ӻ�H�%_��v����~ar@�6:�c|�6雕7��ˮ�mK�%�@ ��>Jʍ�7�����J��6����̽���)���J���wK@׆���e�7��ǹmI�J	�a�+�a��g�v�a���;�/�3'apˎ*]�9��X�H ߩ�'<�8|v4��'�2p��6�
�:U��!'uɃC�)C��G�")��L3/Q��e��=�l�W-����2�����x����ԗ�!���Y݉����G�%�{8�o��| �s;�7���^l����ܓp���\�w�����f����;����7��������~6m�K��4�mpi��ig���ڿ���5p��@wI�⏰O,-������&<����V63[�i�9�����������uL�����S�Fn�y�/�ѱ��R�;J��T�.Y�?t�N�.pu}霶�ȆR4i���}�����w.p�%	���Qi����˴9p�⬬�B�U&�Q��xUy���<ފ�U].G���$�W4��Ƙh��x��B�\�Q����:���i����7�iz�wc���ۖ�_nih���(��Qs�˴�p������p�q~[�_��|w�b�+o�f���Ѷ��V�6|���Y|]m��d��z˵3j�_o����8ϻƍO�\�"���-�!^�G��|��Q	b�U�8�I�$����I�II�ڐ���\���z-�S��8�G��|�{���p�N^�ۓ���ꞌZ�_N{�O�������<�p��k�_ߺ�q����n)f��k>�=h���@���l6X�﮺��bk�� ��@
� Ő��!�/]���| V�(X'����s��N�(��,����%�mH�����-8�:r/�%�V����+�C�!��ؗ�c|cR�f4�uҮ!	�'���薱IjS��Kx�A�y8�S�!��۹I�F�\��$^�jZ��z�J��J�����ɽI�rVk���s����FϽ�:�/�����ۚ�����K��;k�5U�a��;���n,�_5+��^���J�@�f��2B���OYϵ������,��t-��eن3��8�'���C���v�����M3��>`k���Fm���im���}�?�j���|��B/���F�ް6B�n��4�{m���{�|�>`��d�RM�mk�mM��.�Q]�Ľ%�ﶷ�/�q������k}�F��C|�Z�
���'�@����g8��mO�z���=��6�&�ۼ��{.����/�5���?����KϽ�>����(tLH�G�Z���?uC�05������ܶ?���8��y�]��t����w{�������Ǐ�7�y�      �      x������ � �      �   {   x�}�1�0��9�\ d;n�8H��b�p1 ���Y�	8lӺ���-sm�[�%S1�x�x��2O�qoD��3�cR7&�Po��$��ϐ^&�ПId��]�V��9�Fj�=÷���H�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�e��
�0���c$�Z�c�Ѕ��֎���Cl�4���B����]CQ~e�3�0/j� �B	r���
i��X����&F�ε�-�ҡ�]N��Ǟ���t�ߤ"��Hzj�I� �z�P�      �      x������ � �      �      x������ � �      �   E   x�3�4�,I-.qH�K���4426153��4202�54�54V00�22�25�&�eL�~s+clb\1z\\\ �G�      �      x������ � �      �   �   x�m�M�P��u�WX���W�i�Q��(��͡45B��},�y��3U���k/U�K�c!DSA�F7�i�ƅ�2��]`A�z1ԃ�ē��i�*�t��ym߯tʙ;{�QF�ІnK��*�k�:�t���s5���0F'/�l�Jt�l�˵�ԏ�{ZH��%+�P�����5T�_#�DyD&     