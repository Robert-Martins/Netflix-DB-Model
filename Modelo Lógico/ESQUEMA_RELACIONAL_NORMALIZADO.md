## Esquema Relacional Normalizado
##

Obs.: Em Markdown não é possível sublinhar texto. Considerar a chave primária como textos entre _ underline _

<br>

CLIENT ( \_id\_, status, #person_id, #user_id, #signature_plan_id )

PERSON ( \_id\_, name, tax_id, telephone, email, birth_date, #address_id )

ADDRESS ( \_id\_, country, zipcode, uf, city, neighbourhood, street, complement )

PAYMENT_METHOD ( \_id\_, type, is_main_method, #credit_card_id, #person_id )

CREDIT_CARD ( \_id\_, cardholder_name, card_number, expired_at, security_code )

INVOICE ( \_id\_, description, status, released_at, due_date, payed_at, #client_id, #payment_method_id, #signature_plan_id )

USER ( \_id\_, login, password )

DEVICE ( \_id\_, device_id, name, os, #user_id )

SUBSCRIPTION_PLAN ( \_id\_, name, value, max_quality, max_screens )

PROFILE ( \_id\_, name, max_age, #profile_image_id )

PROFILE_PIC ( \_id\_, url )

CONTENT_LIST ( \_id\_, #profile_id, #content_id )

EVALUATION ( \_id\_ , type, #profile_id, #content_id)

SESSION ( \_id\_, moment, #profile_id, #file_id )

CONTENT ( \_id\_, type, name, image, description, director, relevance, date, max_quality, min_age, #file_id )

CONTENT_ACTORS ( \_id\_, #content_id, #actor_id )

ACTOR ( \_id\_, name )

CONTENT_GENDERS ( \_id\_, #content_id, #gender_id )

GENDER ( \_id\_, name, description )

CONTENT_LANGUAGE ( \_id\_, #content_id, #language_id )

LANGUAGE ( \_id\_, name )

SEASON ( \_id\_, name, description, date, #content_id )

FILE ( \_id\_, name, description, duration, url, #season_id )

AUDIO ( \_id\_, language, url, #file_id )
