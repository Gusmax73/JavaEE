PGDMP     (                     x         	   Web-store    12.1    12.1     $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    16461 	   Web-store    DATABASE     �   CREATE DATABASE "Web-store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "Web-store";
                shop    false            �            1259    16984    camera    TABLE     �   CREATE TABLE public.camera (
    id bigint NOT NULL,
    brand character varying(255),
    model character varying(255),
    description character varying(511),
    price bigint
);
    DROP TABLE public.camera;
       public         heap    postgres    false            �            1259    16905    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          shop    false            �            1259    16975 	   notebooks    TABLE     �   CREATE TABLE public.notebooks (
    id bigint NOT NULL,
    brand character varying(255),
    model character varying(255),
    description character varying(511),
    price bigint
);
    DROP TABLE public.notebooks;
       public         heap    shop    false            �            1259    16973    notebooks_id_seq    SEQUENCE     y   CREATE SEQUENCE public.notebooks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.notebooks_id_seq;
       public          shop    false    207            (           0    0    notebooks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.notebooks_id_seq OWNED BY public.notebooks.id;
          public          shop    false    206            �            1259    16965    products    TABLE     ~   CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255),
    namerus character varying(255)
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16917    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255),
    login character varying(255),
    password character varying(255)
);
    DROP TABLE public.users;
       public         heap    shop    false            �            1259    16915    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          shop    false    204            )           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          shop    false    203            �
           2604    16978    notebooks id    DEFAULT     l   ALTER TABLE ONLY public.notebooks ALTER COLUMN id SET DEFAULT nextval('public.notebooks_id_seq'::regclass);
 ;   ALTER TABLE public.notebooks ALTER COLUMN id DROP DEFAULT;
       public          shop    false    206    207    207            �
           2604    16920    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          shop    false    203    204    204            !          0    16984    camera 
   TABLE DATA           F   COPY public.camera (id, brand, model, description, price) FROM stdin;
    public          postgres    false    208                     0    16975 	   notebooks 
   TABLE DATA           I   COPY public.notebooks (id, brand, model, description, price) FROM stdin;
    public          shop    false    207   9                 0    16965    products 
   TABLE DATA           5   COPY public.products (id, name, namerus) FROM stdin;
    public          postgres    false    205   �                 0    16917    users 
   TABLE DATA           ;   COPY public.users (id, email, login, password) FROM stdin;
    public          shop    false    204   B       *           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          shop    false    202            +           0    0    notebooks_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.notebooks_id_seq', 1, false);
          public          shop    false    206            ,           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 7, true);
          public          shop    false    203            �
           2606    16991    camera camera_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.camera
    ADD CONSTRAINT camera_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.camera DROP CONSTRAINT camera_pkey;
       public            postgres    false    208            �
           2606    16983    notebooks notebooks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.notebooks
    ADD CONSTRAINT notebooks_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.notebooks DROP CONSTRAINT notebooks_pkey;
       public            shop    false    207            �
           2606    16972    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    205            �
           2606    16925    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            shop    false    204            !      x������ � �          �  x�uVKoU];��.[a[�6���bWB"8EM;d��*F� �����XUY!�b�4~L3~������9���G)�x�{��|�N��h﫽B㋚����w�����3����R�o���������v�z�kG�g�.F.�w����g������ָ�]�;����nh༲�*�����l�K|�m����%�渙�%�->�����\�c��%v�ĵ�D<�5vå���9L�,Ý�A��k�A��?�Ϭ@����]Ry������ѳŧ
OQX� 1�taJO\TvJv��U�vZf� ��)n�,:��Q���u�?옏�zB�9���M��_4t��WO��x\�4D��P�h#�	��p\�<,qx��Hd�~r����|�:j���"+�� ���3�:�#jd�mc��7h��S�°1��5?k}�4���f;z�$�����7�c��~C�]������7[?����uh��|�*��4�/
��0	?�@�[C� Ow���*�W�у(�6D���މ����RNi��Yn�~v&` �-�Y����T�{�g��U0Mt{��It�{��@2A4�ᅄ�'qL�,U�
�	�Ea��[�uel���a�N��oV��,��=�˯�w���6�X%L�~c�˓��>�5 �.�� �Q���b��
��5�htaosb���(�L��<%XaPR�g��3Ek��gJ�1"��Ƭ+4%�A�(��R�(߲H��	���,br[å���&1*p�T^n�\VN��2z�H�T���.����m�(�/������䪕,F�3�r��rV��������ZߛJT�L�r���[6FsI<��
Ǆ�Ax�}���m��t�D{f-���(CTO��E�&{N��`�'���r��K%���ˍ>�R�{�&�rb�k)�X�Y�)+�؇�X�[Hmb�'�8��4�d��B��i�
��O���Tl%N���3�#�ꊲ=#�0��s�GK����K#B������gBd,��A�
S�;�8[6�j�z�0��/���Z:t܉9~ț\r�f�%	ËEu4��~=�+"�y�g_��}d�(���05�Q�K�A��To1~X��e��=Sacߵ�_q�� :1�É}�|.��M�M�jX��Y�|�C;e��W.T�j~S������         C   x�8 ��1	notebooks	Ноутбуки
2	camera	Камеры
\.


!��         /   x�3�,I-.1r �z���.��2S�`9Br�iT=-1z\\\ �I     