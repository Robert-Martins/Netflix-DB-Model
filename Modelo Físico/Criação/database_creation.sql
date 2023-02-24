CREATE TABLE tb_address (
	id	int	primary key,
	country	varchar(20),
	zipcode	varchar(15),
	uf	varchar(10),
	city	varchar(30),
	neighbourhood	varchar(40),
	street	varchar(40),
	complement	varchar(40)
);

CREATE TABLE tb_person (
	id	int	primary key,
	name	varchar(50),
	tax_id	varchar(20),
	telephone	varchar(15),
	email	varchar(30),
	birth_date	date,
	address_id	int	references	tb_address(id)
);

CREATE TABLE tb_credit_card (
	id	int	primary key,
	cardholder_name	varchar(50),
	card_number	varchar(40),
	expired_at	varchar(7),
	security_code	int
);

CREATE TABLE tb_payment_method (
	id	int	primary key,
	type	varchar(20),
	is_main_method	bool,
	credit_card_id	int	references	tb_credit_card(id),
	person_id	int	references	tb_person(id)
);

CREATE TABLE tb_user (
    id  int primary key,
    login   varchar(30),
    password    varchar(20)
);

CREATE TABLE tb_device (
    id  int primary key,
    device_id   varchar(24),
    name    varchar(40),
    os  varchar(10),
    user_id int references  tb_user(id)
);

CREATE TABLE tb_subscription_plan (
    id  int primary key,
    name    varchar(40),
    value   numeric,
    max_quality varchar(5),
    max_screens int
);

CREATE TABLE tb_client (
    id  int primary key,
    status  varchar(10),
    person_id   int references  tb_person(id),
    user_id int references  tb_user(id),
    signature_plan_id   int references  tb_subscription_plan(id)
);

CREATE TABLE tb_invoice (
    id  int primary key,
    description varchar(255),
    status  varchar(10),
    released_at timestamp,
    due_date    timestamp,
    payed_at    timestamp,
    client_id   int references  tb_client(id),
    payment_method_id   int references  tb_payment_method(id)
);

CREATE TABLE tb_profile_pic (
    id  int primary key,
    url varchar(255)
);

CREATE TABLE tb_profile (
    id  int primary key,
    name    varchar(20),
    max_age int,
    profile_image_id    int references  tb_profile_pic(id)
);

CREATE TABLE tb_content (
    id  int primary key,
    type    varchar(10),
    name    varchar(50),
    image   varchar(255),
    description varchar(255),
    director    varchar(100),
    relevance   int,
    date    timestamp,
    max_quality varchar(5),
    min_age int
);

CREATE TABLE tb_content_list (
    id  int primary key,
    content_id  int references  tb_content(id),
    profile_id  int references  tb_profile(id)
);

CREATE TABLE tb_evaluation (
    id  int primary key,
    type    varchar(10),
    content_id  int references  tb_content(id),
    profile_id  int references  tb_profile(id)
);

CREATE TABLE tb_language (
    id  int primary key,
    name    varchar(30)
);

CREATE TABLE tb_content_languages (
    id  int primary key,
    content_id  int references tb_content(id),
    language_id    int references  tb_language(id)
);

CREATE TABLE tb_gender (
    id  int primary key,
    name    varchar(30),
    description varchar(50)
);

CREATE TABLE tb_content_genders (
    id  int primary key,
    content_id  int references tb_content(id),
    gender_id    int references  tb_gender(id)
);

CREATE TABLE tb_actor (
    id  int primary key,
    name    varchar(100)
);

CREATE TABLE tb_content_actors (
    id  int primary key,
    content_id  int references tb_content(id),
    actor_id    int references  tb_actor(id)
);

CREATE TABLE tb_season (
    id  int primary key,
    name    varchar(50),
    description varchar(255),
    date    timestamp,
    content_id  int references  tb_content(id)
);

CREATE TABLE tb_file (
    id  int primary key,
    name    varchar(50),
    description varchar(255),
    duration int,
    url varchar(255),
    season_id   int references  tb_season(id),
    content_id  int references  tb_content(id)
);

CREATE TABLE tb_audio (
    id  int primary key,
    language    varchar(30),
    url varchar(255),
    file_id int references  tb_file(id)
);

CREATE TABLE tb_session (
    id  int primary key,
    moment  int,
    profile_id  int references tb_profile(id),
    file_id int references  tb_file(id)
);