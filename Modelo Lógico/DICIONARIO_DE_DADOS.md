## Dicionário de Dados
##

Um dicionário de dado armazena e comunica informações sobre um banco de dados. 
É considerado uma lista de dados com os principais termos e métricas do banco de dados que está vinculado. 
Esse material também pode ser entendido como um glossário dos seus dados.

Será desenvolvido um dicionário de dados por Entidade. Em cada Entidade serão dispostas as seguintes informações por atributo:

- Nome do Atributo
- Nome do Atributo na Entidade
- Tipo do Atributo
- Descrição
- Valores Permitidos
- Possui valores nulos?
- Observações

### Entidade `Client`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Cliente | id | Inteiro | Identificador Único de Registro de Cliente | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Status do Cliente | status | Enum String | Status do Cliente | Valores do Enum Status: Active, Inactive e Blocked | Não | - |
| ID de Pessoa do Cliente | person_id | Inteiro | Identificador que referencia a Pessoa do Cliente | Valores Inteiros maiores que 0 | Não | Chave Estrangeira, Valor Único na tabela | 
| ID de Usuário do Cliente | user_id | Inteiro | Identificador que referencia o Usuário do Cliente | Valores Inteiros maiores que 0 | Não | Chave Estrangeira, Valor Único na tabela | 
| ID de Plano de Assinatura do cliente | signature_plan_id | Inteiro | Identificador que referencia o Plano de Assinatura do Cliente | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Person`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Pessoa | id | Inteiro | Identificador Único de Registro de Pessoa | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome da Pessoa | name | String | Nome da Pessoa | Textos de até 90 caracteres | Não | - |
| CPF da Pessoa | tax_id | String | CPF da Pessoa | Textos de até 15 caracteres | Não | - |
| Telefone da Pessoa | telephone | String | Telefone da Pessoa | Textos de até 15 caracteres | Não | - |
| Email da Pessoa | email | String | Email da Pessoa | Textos de até 30 caracteres | Não | - |
| Data de Nascimento da Pessoa | birth_date | Timestamp | Nome da Pessoa | Datas Formatadas como Timestamp | Não | - |
| ID do Endereço da Pessoa | address_id | Inteiro | Identificador que referencia o Endereço da Pessoa | Valores Inteiros maiores que 0 | Não | Chave Estrangeira, Valor Único na Tabela |

<br>

### Entidade `Address`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Endereço | id | Inteiro | Identificador Único de Registro de Endereço | Valores Inteiros maiores que 0 | Não | Chave Primária |
| País do Endereço | country | String | País do Endereço | Textos de até 30 caracteres | Não | - |
| Código Postal do Endereço | zipcode | String | Código Postal do Endereço | Textos de até 30 caracteres | Não | - |
| Estado do Endereço | uf | String | Estado do Endereço | Textos de até 30 caracteres | Não | - |
| Cidade do Endereço | city | String | Cidade do Endereço | Textos de até 30 caracteres | Não | - |
| Bairro do Endereço | neighbourhood | String | Bairro do Endereço | Textos de até 30 caracteres | Não | - |
| Rua do Endereço | street | String | Rua do Endereço | Textos de até 30 caracteres | Não | - |
| Complemento do Endereço | complement | String | Complemento do Endereço | Textos de até 30 caracteres | Não | - |

<br>

### Entidade `PaymentMethod`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Método de Pagamento | id | Inteiro | Identificador Único de Registro de Método de Pagamento | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Tipo de Método de Pagamento | type | Enum String | Tipo de Método de Pagamento | Valores do Enum Payment Method Type: Boleto e Cartão de Crédito | Não | Irá determinar se existe vínculo com a Entidade `CreditCard` |
| Método de Pagamento Principal | is_main_method | Boolean | Indica se é o método de pagamento principal para emissão da fatura | Valores Booleanos True ou False | Não | Indica se será o método vinculado à transação de pagamento |
| ID de Cartão de Crédito de Método de Pagamento | credit_card_id | Inteiro | Identificador que referencia o Cartão de Crédito do Método de Pagamento | Valores Inteiros maiores que 0 | Sim | Chave Estrangeira, Valor Único na Tabela |

<br>

### Entidade `CreditCard`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Cartão de Crédito | id | Inteiro | Identificador Único de Registro de Cartão de Crédito | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Titular do Cartão de Crédito | cardholder_name | String | Nome do Titular como escrito Cartão de Crédito | Textos de até 40 caracteres | Não | O Texto salvo deve ser maiúsculo |
| Número do Cartão de Crédito | card_number | String | Número do Cartão de Crédito | Textos de até 25 caracteres | Não | O Texto salvo deve ser formatado |
| Data de Validade do Cartão de Crédito | expired_at | String | Data de Validade do Cartão de Crédito | Textos de até 7 caracteres | Não | O Texto salvo deve ser salvo formatado |
| Código de Segurança do Cartão de Crédito | security_code | Inteiro | Código de Segurança do Cartão de Crédito | Textos de até 5 caracteres | Não | - |

<br>

### Entidade `Invoice`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID da Fatura | id | Inteiro | Identificador Único de Registro de Transação | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Descrição da Fatura | description | String | Descrição da Fatura | Textos de até 500 caracteres | Não | Irá descrever o serviço referente da fatura e demais especificações de pagamento |
| Status da Fatura | status | Enum String | Status do Pagamento da Fatura | Valores do Enum Invoice Status: Sent, Concluded, Overdue e Late Payment | Não | Impacta no status do cliente |
| Data de Emissão da Fatura | released_at | Timestamp | Data de Emissão da Fatura | Datas no Formato Timestamp | Não | - |
| Data de Vencimento da Fatura | due_date | Timestamp | Data de Vencimento da Fatura | Datas no Formato Timestamp | Não | - |
| Data de Pagamento da Fatura | payed_at | Timestamp | Data de Pagamento da Fatura | Datas no Formato Timestamp | Não | - |
| ID do Cliente da Fatura | client_id | Inteiro | Identificador que referencia o Cliente responsável pela Fatura | Valores Inteiros maiores que 0 | Não | Chave Estrangeira, Valor Único na Tabela |
| ID do Método de Pagamento da Fatura | payment_method_id | Inteiro | Identificador que referencia o Método de Pagamento da Fatura | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Plano de Assinatura da Fatura | signature_plan_id | Inteiro | Identificador que referencia o Plano de Assinatura da Fatura | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `User`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Usuário | id | Inteiro | Identificador Único de Registro de Usuário | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Login de Usuário | login | String | Login de Usuário | Texto de até 40 caracteres | Não | Valores Único na Tabela |
| Senha de Usuário | password | String | Senha de Usuário | Texto de até 40 caracteres | Não | O Valores salvo deve estar encriptado |

<br>

### Entidade `Device`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Dispositivo | id | Inteiro | Identificador Único de Registro de Dispositivo | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Número de Serial do Dispositivo | device_id | String | Número de Serial do Dispositivo | Textos de até 50 caracteres | Não | Valor Único na Tabela |
| Nome do Dispositivo | name | String | Nome do Dispositivo | Textos de até 30 caracteres | Não | - |
| Sistema Operacional do Dispositivo | os | String | Sistema Operacional do Dispositivo | Textos de até 20 caracteres | Não | - |
| ID do Usuário do Dispositivo | user_id | Inteiro | Identificador que referencia o Usuário do Dispositivo | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `SubscriptionPlan`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Plano de Assinatura | id | Inteiro | Identificador Único de Registro de Plano de Assinatura | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Plano de Assinatura | name | String | Nome do Plano de Assinatura | Textos de até 20 caracteres | Não | - |
| Valor Mensal do Plano de Assinatura | value | Decimal | Valor Mensal do Plano de Assinatura | Valores Decimal maior que 0 | Não | - |
| Qualidade Máxima de Vídeo permitida pelo Plano de Assinatura | max_quality | Enum String | Qualidade Máxima de Vídeo permitida pelo Plano de Assinatura | Valores de Enum Video Qualities: 480p, 720p, 1080p, 2160 e 4K | Não | - |
| Máximo de Telas Simultâneas permitidas pelo Plano de Assinatura | max_screens | Inteiro | Máximo de Telas Simultâneas permitidas pelo Plano de Assinatura | Valores Inteiros maiores que 0 | Não | - |

<br>

### Entidade `Profile`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Perfil | id | Inteiro | Identificador Único de Registro de Perfil | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Perfil | name | String | Nome do Perfil | Textos de até 15 caracteres | Não | - |
| Idade Máxima de Conteúdos Disponíveis para o Perfil | max_age | Inteiro | Faixa Etária Máxima de Conteúdos Disponíveis para o Perfil | Valores Inteiros maiores que 0 | Não | - |
| ID da Imagem do Perfil | profile_image_id | Inteiro | Identificador que referencia a Imagem do Perfil | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `ProfilePic`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Imagem de Perfil | id | Inteiro | Identificador Único de Registro de Imagem de Perfil | Valores Inteiros maiores que 0 | Não | Chave Primária |
| URL do Arquivo de Imagem do Perfil | url | String | URL para acesso do Arquivo da Imagem de Perfil | Textos de até 255 caracteres | Não | O Valor salvo deve ser uma URL válida |

<br>

### Entidade `ContentList`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Lista de Conteúdo | id | Inteiro | Identificador Único de Registro de Lista de Conteúdo | Valores Inteiros maiores que 0 | Não | Chave Primária |
| ID do Perfil | profile_id | Inteiro | Identificador que referencia o Perfil da respectiva lista de conteúdo | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Conteúdo | content_id | Inteiro | Identificador que referencia o Conteúdo da respectiva lista de conteúdo | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Evaluation`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Avaliação | id | Inteiro | Identificador Único de Registro de Avaliação | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Tipo de Avaliação | type | Enum String | Tipo de Avaliação | Valores de Enum Evaluation Type: Positive e Negative | Não | - |
| ID do Perfil | profile_id | Inteiro | Identificador que referencia o Perfil que realizou a Avaliação | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Conteúdo | content_id | Inteiro | Identificador que referencia o Conteúdo avaliado | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Session`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Sessão | id | Inteiro | Identificador Único de Registro de Sessão | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Momento em que o Conteúdo foi interrompido | moment | Inteiro | Momento em segundos que o conteúdo foi interrompido | Valores inteiros maiores que 0 | Não | - |
| ID do Perfil | profile_id | Inteiro | Identificador que referencia o Perfil da respectiva Sessão | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Arquivo | file_id | Inteiro | Identificador que referencia o Arquivo da respectiva Sessão | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Content`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Conteúdo | id | Inteiro | Identificador Único de Registro de Conteúdo | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Tipo de Conteúdo | type | Enum String | Tipo de Conteúdo | Valores de Enum Content Type: Movies e Series | Não | Determina a quantidade de Arquivos vinculados ao conteúdo. Se Série, possuirá múltiplos Arquivos, que irão representar os diversos episódios |
| Nome do Conteúdo | name | String | Nome do Conteúdo | Textos de até 100 caracteres | Não | - |
| Imagem do Conteúdo | image | String | URL do Arquivo da Imagem do Conteúdo | Textos de até 255 caracteres | Não | O Valor salvo deve ser uma URL válida |
| Descrição do Conteúdo | description | String | Descrição do Conteúdo | Textos de até 255 caracteres | Não | - |
| Diretor(a) do Conteúdo | director | String | Nome do Diretor do Conteúdo | Textos de até 50 caracteres | Não | - |
| Relevância do Conteúdo | relevance | Inteiro | Relevância do Conteúdo em porcentagem | Valores Inteiros entre 0 e 100 | Não | - |
| Data do Conteúdo | date | Timestamp | Data de Lançamento do Conteúdo | Data formatadas como Timestamp | Não | - |
| Qualidade Máxima do Conteúdo | max_quality | Enum String | Qualidade Máxima do Conteúdo | Valores de Enum Video Qualities: 480p, 720p, 1080p, 2160 e 4K | Não | - |
| Faixa Etária do Conteúdo | min_age | Inteiro | Faixa Etária Mínima para acessar o Conteúdo | Valores Inteiros maiores que 0 | Não | - |
| ID do Arquivo de Vídeo | file_id | Inteiro | Identificador que referencia o Arquivo de Vídeo do Conteúdo | Valores Inteiros maiores que 0 | Sim | Possuirá Valor apenas se o Conteúdo for do tipo Filme |

<br>

### Entidade `ContentActors`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID do Relacionamento entre Conteúdo e Atores | id | Inteiro | Identificador Único de Registro | Valores Inteiros maiores que 0 | Não | Chave Primária |
| ID do Conteúdo | content_id | Inteiro | Identificador que referencia o Conteúdo no qual o(a) Ator(a) participou | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Ator(a) | actor_id | Inteiro | Identificador que referencia o Ator(a) que participou no Conteúdo | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Actor`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Ator(a) | id | Inteiro | Identificador Único de Registro de Ator(a) | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Ator(a) | name | String | Nome do Ator(a) | Textos de até 50 caracteres | Não | - |

<br>

### Entidade `ContentGenders`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID do Relacionamento entre Conteúdo e Gêneros | id | Inteiro | Identificador Único de Registro | Valores Inteiros maiores que 0 | Não | Chave Primária |
| ID do Conteúdo | content_id | Inteiro | Identificador que referencia o Conteúdo do respectivo Gênero | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Gênero | gender_id | Inteiro | Identificador que referencia o Gênero do respectivo Conteúdo | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Gender`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Gênero | id | Inteiro | Identificador Único de Registro de Gênero | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Gênero | name | String | Nome do Gênero | Textos de até 20 caracteres | Não | - |
| Descrição do Gênero | description | String | Descrição do Gênero | Textos de até 100 caracteres | Não | - |

<br>

### Entidade `ContentLanguages`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID do Relacionamento entre Conteúdo e Idiomas | id | Inteiro | Identificador Único de Registro | Valores Inteiros maiores que 0 | Não | Chave Primária |
| ID do Conteúdo | content_id | Inteiro | Identificador que referencia o Conteúdo do respectivo Idioma | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |
| ID do Idioma | language_id | Inteiro | Identificador que referencia o Idioma do respectivo Conteúdo | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `Language`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Idioma | id | Inteiro | Identificador Único de Registro de Idioma | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Idioma | name | String | Nome do Idioma | Textos de até 50 caracteres | Não | - |

<br>

### Entidade `Season`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Arquivo de Vídeo | id | Inteiro | Identificador Único de Registro de Arquivo de Vídeo | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome da Temporada | name | String | Nome da Temporada | Textos de até 40 caracteres | Não | - |
| Descrição da Temporada | description | String | Descrição da Temporada | Textos de até 255 caracteres | Não | - |
| Data da Temporada | date | Timestamp | Data de Lançamento da Temporada | Datas no formato Timestamp | Não | - |
| ID do Conteúdo | content_id | Inteiro | Identificador que referencia o Conteúdo da qual a Temporada faz parte | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>

### Entidade `File`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Arquivo de Vídeo | id | Inteiro | Identificador Único de Registro de Arquivo de Vídeo | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Nome do Arquivo de Vídeo | name | String | Nome do Arquivo de Vídeo | Textos de até 40 caracteres | Sim | Se Conteúdo for Filme, será nulo |
| Descrição do Arquivo de Vídeo | description | String | Descrição do Arquivo de Vídeo | Textos de até 255 caracteres | Sim | Se Conteúdo for Filme, será nulo |
| Duração do Arquivo de Vídeo | duration | Inteiro | Duração do Arquivo de Vídeo em Segundos | Valores Inteiros maiores que 0 | Não | - |
| URL do Arquivo de Vídeo | url | String | URL para acessar o Arquivo de Vídeo | Textos de até 255 caracteres | Não | - |
| ID da Temporada | season_id | Inteiro | Identificador que referencia a Temporada que o Arquivo de Vídeo faz parte | Valores Inteiros maiores que 0 | Sim | Apenas nulo se possuir relacionamento direto com Conteúdo do tipo Filme |

<br>

### Entidade `Audio`

| Nome do Atributo | Nome do Atributo na Entidade | Tipo do Atributo | Descrição | Valores Permitidos | Possui valores nulos? | Observações |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| ID de Arquivo de Áudio | id | Inteiro | Identificador Único de Registro de Arquivo de Áudio | Valores Inteiros maiores que 0 | Não | Chave Primária |
| Idioma do Arquivo de Áudio | language | String | Idioma do Arquivo de Áudio | Textos de até 50 caracteres | Não | - |
| URL do Arquivo de Áudio | url | String | URL para acessar o Arquivo de Áudio | Textos de 255 caracteres | Não | O Valor salvo deve ser uma URL válida |
| ID do Arquivo de Vídeo | file_id | Inteiro | Identificador que referencia o Arquivo de Vídeo que o Arquivo de Áudio faz parte | Valores Inteiros maiores que 0 | Não | Chave Estrangeira |

<br>