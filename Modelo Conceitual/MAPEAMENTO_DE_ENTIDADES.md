## Mapeamento de Entidades
##

O objetivo desse arquivo é descrever o método para definição das entidades a partir dos requisitos do projeto.

<br>

### Requisitos Funcionais

- _**RF01**
O cliente deve ter a possibilidade de adquirir um plano de assinatura do serviço_

Definição de Entidade `Client` que possui vínculo com Entidade `Subscription Plan`.

<br>

- _**RF02** 
O cliente deve ter acesso à plataforma uma vez que possuir assinatura_

Definição de Entidade `User` referente ao acesso de `Client` à plataforma.

<br>

- _**RF03** 
O cliente deve ter a possibilidade de cadastrar múltiplos perfis_

Definição de Entidade `Profile` que representa os perfis de visualização de um `Client`.

<br>

- _**RF04** 
O cliente deve ter a possibilidade de editar o cadastro de perfis_

Entidade `Profile` conforme já definido.

<br>

- _**RF05** 
O cliente deve ter acesso aos conteúdos, filmes ou séries, disponbilizados, por tipo de permissão de perfil_

A permissão de perfil será inserida como atributo na entidade `Profile`. Definição de Entidades `Content`, `Movie`, `Series` e `Video`.
`Content` refere à conteúdos de forma geral, podendo ser séries ou filmes. `Movie` e `Series` representam filmes e séries, respectivamente.
Ainda, `Video` representa o arquivo de reprodução. Séries podem possuir tipos, sendo minisséries ou documentários, que podem ou não possuir múltiplas temporadas.
A Entidade `Season` representa a temporada. `Video` também representa um episódio de uma série.

<br>

- _**RF06** 
O cliente deve ter a possibilidade de filtrar o conteúdo por gênero e / ou nome_

`Content` possui vínculo com a Entidade `Gender`, que representa gêneros de conteúdos da plataforma.

<br>

- _**RF07** 
O cliente deve ter a possibilidade de assistir à filmes e séries_

Entidades já definidas.

<br>

- _**RF08** 
O cliente deve ter a possibilidade de continuar sua sessão no instante no qual parou_

Definição de Entidade `Session` que representa a visualização de um `Video`. Possui atributo `moment` que representa o tempo de visualização de um `Video`.

<br>

- _**RF09** 
O cliente deve ter a possibilidade de avaliar o conteúdo_

Entidade `Evaluation` que vincula um `Profile` à um `Content` a partir de uma avaliação.

<br>

- _**RF10** 
O cliente deve ter a possibilidade de salvar conteúdos assistidos_

Definição de Entidade `ContentList` que representa a lista de `Content` salvos por um `Profile`.

<br>

- _**RF11** 
O cliente deve ter a possibilidade de editar seu cadastro_

Entidade já definida.

<br>

- _**RF12** 
O cliente deve ter a possibilidade de alterar a forma de pagamento_

Entidade `Payment Method` definida. Representa as múltiplas formas de pagamento cadastradas pelo `Client`. Atributo `main` define se é o método de pagamento principal para cobrança.

<br>

- _**RF13** 
O cliente deve ter acesso ao histórico de pagamento da assinatura_

Definição de Entidade `Transaction` que representa as cobranças do plano de assinatura. Sua criação é no momento de cobrança e possui atributo `status` para verificação
de transação efetuada com sucesso.

<br>

- _**RF14** 
O cliente deve ter acesso aos dispositivos que acessaram sua conta_

Entidade `Device` definida e vinculada à Entidade `User`.

<br>

- _**RF15**
O sistema deve diferenciar para o cliente os streams por filme ou série, gênero ou popularidade_

Entidades já definidas. `Content` possui atributo `relevance` referente à popularidade.

<br>

- _**RF16**
O sistema deve registrar o dispositivo utilizado pelo usuário ao acessar a plataforma_

Entidades já definidas.

<br>