INSERT INTO tb_address (id, country, zipcode, uf, city, neighbourhood, street, complement)
VALUES
(1, 'Brasil', '70.000-000', 'GO', 'Goiânia', 'Samambaia', 'INF', 'Software'),
(2, 'Estados Unidos', '90210', 'NY', 'Albany', 'Times Square', 'Central Park', ''),
(3, 'Brasil', '74.810.100', 'GO', 'Goiânia', 'Jardim Goiás', 'Jamel Cecílio', 'Flamboyant');

INSERT INTO tb_person(id, name, tax_id, telephone, email, birth_date, address_id)
VALUES
(1, 'Robert Martins', '010.010.010-10', '(62)99600-0000', 'robert@ufg.com', '2001-08-11', 1),
(2, 'Vitória de Santana', '231.213.312-12', '(62)99599-4560', 'vitoria@jornalista.com', '2001-02-20', 2),
(3, 'Judas Tadeu', '645.123.654-12', '(62)09898-9898', 'judas@yahoo.com', '10-01-01', 3);

INSERT INTO tb_credit_card(id, cardholder_name, card_number, expired_at, security_code)
VALUES
(1, 'Robert Martins', '0000 0000 0000 0000', '12/2030', '010'),
(2, 'Vitória de Santana', '5544 3322 1100 9988', '08/2025', '654'),
(3, 'Fred Anício', '7777 5555 2222 9999', '05/2027', '020');

INSERT INTO tb_payment_method(id, type, is_main_method, credit_card_id, person_id)
VALUES
(1, 'CREDIT', TRUE, 1, 1),
(2, 'BOLETO', TRUE, NULL, 2),
(3, 'BOLETO', TRUE, NULL, 3);

INSERT INTO tb_user(id, login, password)
VALUES
(1, 'robert@ufg.com', '123456'),
(2, 'vitoria@jornalista.com', '123654'),
(3, 'judas@yahoo.com', '654321');

INSERT INTO tb_device(id, device_id, name, os, user_id)
VALUES
(1, '4390KLS434LKJS-000', 'SMARTPHONE_SAMSUNG', 'Android', 1),
(2, '312SFDSN322M_321-KL', 'IPHONE_10', 'iOS', 2),
(3, 'DLKSJFDKLS_EI-4391-RDKM', 'DELL_G3', 'Windows', 3);

INSERT INTO tb_subscription_plan(id, name, value, max_quality, max_screens)
VALUES
(1, 'Plano Comum', 25, '1080p', 1),
(2, 'Plano Família', 35, '2160p', 4),
(3, 'Plano Premium', 45, '4K', 5);

INSERT INTO tb_client(id, status, person_id, user_id, signature_plan_id)
VALUES
(1, 'ACTIVE', 1, 1, 1),
(2, 'BLOCKED', 2, 2, 2),
(3, 'INACTIVE', 3, 3, 3);

INSERT INTO tb_invoice(id, description, status, released_at, due_date, payed_at, client_id, payment_method_id)
VALUES
(1, 'Pagamento referente à fatura do mês 10 do ano 2022', 'SENT', TIMESTAMP '2005-05-13 07:15:31.123456789', TIMESTAMP '2005-05-13 07:15:31.123456789', TIMESTAMP '2005-05-13 07:15:31.123456789', 1, 1),
(2, 'Pagamento referente à fatura do mês 10 do ano 2022', 'OVERDUE', TIMESTAMP '2005-05-13 07:15:31.123456789', TIMESTAMP '2005-05-13 07:15:31.123456789', TIMESTAMP '2005-05-13 07:15:31.123456789', 2, 2),
(3, 'Pagamento referente à fatura do mês 10 do ano 2022', 'CONCLUDED', TIMESTAMP '2005-05-13 07:15:31.123456789', TIMESTAMP '2005-05-13 07:15:31.123456789', TIMESTAMP '2005-05-13 07:15:31.123456789', 3, 3);

INSERT INTO tb_profile_pic(id, url)
VALUES
(1, 'http://localhost:8000/1'),
(2, 'http://localhost:8000/2'),
(3, 'http://localhost:8000/3');

INSERT INTO tb_profile(id, name, max_age, profile_image_id)
VALUES
(1, 'Robert', 99, 1),
(2, 'Vits', 18, 2),
(3, 'Judão', 12, 3);

INSERT INTO tb_content(id, type, name, image, description, director, relevance, date, max_quality, min_age)
VALUES
(1, 'MOVIE', 'Homem-Aranha 4', 'http://localhost:8000/6', 'Acompanhe o homem-aranha em mais uma aventura', 'Tom Jobim', 10, TIMESTAMP '2021-12-25 00:00:00', '4K', 12),
(2, 'MOVIE', 'Titanic', 'http://localhost:8000/4', 'O amor de duas pessoas durante o maior naufrágio da história', 'Tom Jobim', 8, TIMESTAMP '2021-12-25 00:00:00', '720p', 18),
(3, 'SERIES', 'Outer Banks', 'http://localhost:8000/5', 'Jovens em uma pequena cidade na busca de solucionar um mistério pirata', 'Tom Jobim', 7, TIMESTAMP '2021-12-25 00:00:00', '2160p', 18);

INSERT INTO tb_content_list(id, content_id, profile_id)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO tb_evaluation(id, type, content_id, profile_id)
VALUES
(1, 'POSITIVE', 1, 1),
(2, 'NEGATIVE', 2, 2),
(3, 'POSITIVE', 3, 3);

INSERT INTO tb_language(id, name)
VALUES
(1, 'Português'),
(2, 'Inglês'),
(3, 'Espanhol');

INSERT INTO tb_content_languages(id, content_id, language_id)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO tb_gender(id, name, description)
VALUES
(1, 'Ficção Científica', 'Uso de elementos científicos na criação de filmes'),
(2, 'Romance', 'Histórias engajadoras e de amor'),
(3, 'Mistério', 'Um mistério direciona a história principal');

INSERT INTO tb_content_genders(id, content_id, gender_id)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO tb_actor(id, name)
VALUES
(1, 'Tobey Maguire'),
(2, 'Rose'),
(3, 'John B');

INSERT INTO tb_content_actors(id, content_id, actor_id)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO tb_season(id, name, description, date, content_id)
VALUES
(1, 'Temporada 1', 'Conheça os personagens', '2019-08-01', 3);

INSERT INTO tb_file(id, name, description, duration, url, season_id, content_id)
VALUES
(1, 'Homem-Aranha 4', 'Acompanhe o homem-aranha em mais uma aventura', 20000, 'http://localhost:8010/7', NULL, 1),
(2, 'Titanic', 'O amor de duas pessoas durante o maior naufrágio da história', 20000, 'http://localhost:8010/8', NULL, 2),
(3, 'Outer Banks', 'Jovens em uma pequena cidade na busca de solucionar um mistério pirata', 3000, 'http://localhost:8010/9', 1, 3);

INSERT INTO tb_audio(id, language, url, file_id)
VALUES
(1, 'Português', 'http://localhost:9000/1', 1),
(2, 'Português', 'http://localhost:9000/2', 2),
(3, 'Português', 'http://localhost:9000/3', 3);

INSERT INTO tb_session(id, moment, profile_id, file_id)
VALUES
(1, 3000, 1, 1),
(2, 12000, 2, 2),
(3, 2700, 3, 3);