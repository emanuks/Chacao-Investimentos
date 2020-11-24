<h1 align="center">Chacão Investimentos</h1>
<h2 align="center">System-Wide Requirements</h2>

____
#### Introdução
System-Wide Requirements são requisitos que definem atributos necessários de qualidade do sistema, como desempenho, usabilidade e confiabilidade, bem como requisitos funcionais globais que não são capturados nos casos de uso.

Nesse artefato serão descritos os system-wide requirements, por meio das categorias: Funcionalidade, Usabilidade, Confiabilidade, Desempenho, Suporte e Restrições.

____
#### Funcionalidade
- Autenticação: Os usuários não autenticados podem visualizar produtos ou criar uma conta no sistema, porém para realizar aplicações é necessário estar autenticado informando CPF e Senha utilizados no cadastro.

- Segurança: Os dados de usuário e conta bancária não deverão ser acessíveis por outro usuário que não for o usuário vinculado às informações ou administrador. O campo de senha deverá ser criptografado e não deve ser acessível para o administrador.

#### Usabilidade
- Facilidade de aprendizado: O sistema deve ser intuitivo de maneira a facilitar a utilização do sistema a qualquer tipo de usuário.

- Compreensão: O sistema deve ser intuitivo e visualmente simples de maneira a garantir que o usuário entenda os avisos e mensagens disponibilizados pelo sistema.

#### Confiabilidade
- Disponibilidade: O sistema deve ser implementado e monitorado de maneira a garantir que não ocorram mais de 7 falhas por semana.

- Capacidade de Recuperação: O sistema não deve ficar fora do ar por mais de 7h por semana.

#### Desempenho
- Tempos de resposta: O tempo máximo de resposta deve ser de 2 segundos.

- Capacidade: O sistema deve ser capaz de operar com 500 usuários simultâneos.

#### Suporte
- Adaptabilidade: O sistema deve se adaptar e incorporar novos tipos de aplicação financeira.

- Escalabilidade: O sistema deve ser projetado e implementado visando escalabilidade, isto é, os componentes e tecnologias devem visar o crescimento do sistema.

#### Restrições
- Linguagem de Programação: O sistema deve ser implementado na linguagem Ruby através do framework Ruby on Rails.

- Suporte à Plataforma: O sistema deve sempre estar disponível nos 3 navegadores mais utilizados do mundo.

____
