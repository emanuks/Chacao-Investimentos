<h1 align="center">Chacão Investimentos</h1>
<h2 align="center">Use cases</h2>

____
<h3 align="center">Visualização do Catálogo de Produtos de Invetimento</h3>

1. **Brief Description**
Este caso de uso descreve como o cliente da Chacão Investimentos usa a plataforma para acessar o catálogo dos produtos disponíveis.
____
2. **Actors**
- Usuário cliente da plataforma
____
3. **Preconditions**
Existir produtos criados na plataforma, o usuário cliente está criado e com permissões de acesso aos produtos disponíveis.
____
4. **Basic Flow of Events**
- O caso de uso começa quando o cliente acessa o catálogo de produtos
- Verifica se existem restrições de acesso entre os produtos e o usuário que está acessando
- Neste caso, o cliente sempre irá visualizar os produtos disponíveis e poderá selecionar um produto, filtrar por categorias, ir para outra parte do sistema ou deslogar da plataforma
____
5. **Key Scenarios**
- Sem resposta do banco de dados
____
6. **Successful Completion**
- Produtos disponibilizados com sucesso
____
____
<h3 align="center">Visualização de Produto de Investimento</h3>

1. **Brief Description**
Este caso de uso descreve como o cliente da Chacão Investimentos usa a plataforma para acessar um produto do catálogo.
____
2. **Actors**
- Usuário cliente da plataforma
____
3. **Preconditions**
- O produto existe
- O usuário cliente está criado e com permissões de acesso ao produto em questão.
____
4. **Basic Flow of Events**
- O caso de uso começa quando o cliente acessa um produto do catálogo
- Verifica se existem restrições de acesso entre o produto e o usuário que está acessando
- Neste caso, o cliente sempre irá ter acesso a mais informações sobre o produto
____
5. **Key Scenarios**
- Sem resposta do banco de dados
____
6. **Successful Completion**
- Informações do produto disponibilizadas ao cliente
____
____
<h3 align="center">Cadastro de Usuário</h3>

1. **Brief Description**
Este caso de uso descreve o cadastro de novos usuários na Chacão Investimentos.
____
2. **Actors**
- Administrador
- Cliente
____
3. **Preconditions**
- Existir funcionalidades implementadas que dão suporte ao cadastro de novos usuários
- Campos específicos precisam ser preenchidos 
____
4. **Basic Flow of Events**
- O caso de uso começa quando um novo usuário precisa ser inserido na plataforma
- Verifica se todos os dados obrigatórios estão preenchidos
- Verifica se todos os dados preenchidos estão corretos de acordo com o seu tipo e restrições
- Neste caso, o usuário sempre irá salvar o novo cadastro ou editar os dados para tentar salvar novamente
____
5. **Alternative Flows**
- CPF no formato inválido
- Conta corrente inválida
- E-mail já foi inserido em outro cadastro
- CPF já cadastrado
- Tipos inválidos de dados em determinados campos
____
6. **Key Scenarios**
- Erro de cadastro por dados inválidos ou inexistentes
____
7. **Successful Completion**
- Usuário cadastrado
____
8. **Special Requirements**
- O servidor precisa ter capacidade de armazenamento

____
____
<h3 align="center">Edição de Usuário</h3>

1. **Brief Description**
Este caso de uso descreve a edição de usuários existentes na Chacão Investimentos.
____
2. **Actors**
- Administrador
- Cliente
____
3. **Preconditions**
- Existir funcionalidades implementadas que dão suporte à edição de usuários existentes
- Campos específicos precisam ser preenchidos 
____
4. **Basic Flow of Events**
- O caso de uso começa quando um usuário precisa ter suas informações alteradas
- Verifica se todos os dados obrigatórios estão preenchidos
- Verifica se todos os dados preenchidos estão corretos de acordo com o seu tipo e restrições
- Neste caso, o usuário sempre irá salvar a alteração dos novos dados ou editar os dados para tentar salvar novamente
____
5. **Alternative Flows**
- CPF no formato inválido
- E-mail já foi inserido em outro cadastro
- CPF já cadastrado
- Tipos inválidos de dados em determinados campos
____
6. **Key Scenarios**
- Erro de edição por dados inválidos ou inexistentes
____
7. **Successful Completion**
- Dados atualizados
____
8. **Special Requirements**
- O servidor precisa ter capacidade de armazenamento para a alteração dos dados

____
____
<h3 align="center">Deleção de Usuário</h3>


1. **Brief Description**
Este caso de uso descreve a deleção de usuários existentes na Chacão Investimentos.
____
2. **Actors**
- Administrador
- Cliente
____
3. **Preconditions**
- Existir funcionalidades implementadas que dão suporte à deleção de usuários existentes
- As relações entre as tabelas precisam estar bem definidas, assim como a especificação do que deve ocorrer em caso de exclusão de registros de uma tabela 
____
4. **Basic Flow of Events**
- O caso de uso começa quando um usuário precisa ser removido do sistema
- Neste caso, o usuário sempre irá remover o usuário e será redirecionado à página que lista os usuários da plataforma
____
5. **Alternative Flows**
- Relações não tão bem definidas entre tabelas
____
6. **Key Scenarios**
- Erro de deleção devido às relações não tão bem definidas
____
7. **Successful Completion**
- Deleção do usuário
____
____
<h3 align="center">Autenticação de Usuário</h3>

1. **Brief Description**
Este caso de uso descreve a autenticação de usuários ao acessar a plataforma Chacão Investimentos.
____
2. **Actors**
- Cliente
- Administrador
____
3. **Preconditions**
- O usuário precisa estar cadastrado
- As suas permissões precisam ser válidas e estarem ativas para o acesso à plataforma
- Existem funcionalidades implementadas que dão suporte à autenticação de usuários
____
4. **Basic Flow of Events**
- O caso de uso começa quando um usuário tenta acessar a plataforma
- Neste caso, o usuário sempre será redirecionado à plataforma ou receberá uma mensagem de erro para tentar novamente o login
____
5. **Alternative Flows**
- Usuário não existe
____
6. **Key Scenarios**
- Erro na autenticação, tentar logar novamente ou criar novo cadastro
____
7. **Successful Completion**
- Acesso à plataforma
____
____
<h3 align="center">Cadastro de Produto de Investimento</h3>

1. **Brief Description**
Este caso de uso descreve o cadastro de novos produtos na Chacão Investimentos.
____
2. **Actors**
- Administrador
____
3. **Preconditions**
- Existir funcionalidades implementadas que dão suporte ao cadastro de novos produtos
- Campos específicos precisam ser preenchidos
- O tipo do produto precisa ser válido (Tesouro Direto, Fundo de Investimento e Renda Fixa) 
____
4. **Basic Flow of Events**
- O caso de uso começa quando um novo produto precisa ser inserido na plataforma
- Verifica se todos os dados obrigatórios estão preenchidos
- Verifica se todos os dados preenchidos estão corretos de acordo com o seu tipo e restrições
- Neste caso, o administrador sempre irá salvar o novo produto ou editar os dados para tentar salvar novamente
____
5. **Alternative Flows**
- Tipos inválidos de dados em determinados campos
____
1. **Key Scenarios**
- Erro de cadastro por dados inválidos ou inexistentes
____
7. **Successful Completion**
- Produto cadastrado
____
8. **Special Requirements**
- O servidor precisa ter capacidade de armazenamento

____
____
<h3 align="center">Edição de Produto de Investimento</h3>

1. **Brief Description**
Este caso de uso descreve a edição de produtos existentes na Chacão Investimentos.
____
2. **Actors**
- Administrador
____
3. **Preconditions**
- Existir funcionalidades implementadas que dão suporte à edição de usuários existentes
- Campos específicos precisam ser preenchidos 
____
4. **Basic Flow of Events**
- O caso de uso começa quando um produto precisa ter suas informações alteradas
- Verifica se todos os dados obrigatórios estão preenchidos
- Verifica se todos os dados preenchidos estão corretos de acordo com o seu tipo e restrições
- Neste caso, o administrador sempre irá salvar a alteração dos novos dados ou editar os dados para tentar salvar novamente
____
5. **Alternative Flows**
- Tipos inválidos de dados em determinados campos
____
6. **Key Scenarios**
- Erro de edição por dados inválidos ou inexistentes
____
7. **Successful Completion**
- Dados atualizados
____
8. **Special Requirements**
- O servidor precisa ter capacidade de armazenamento para a alteração dos dados

____
____
<h3 align="center">Deleção de Produto de Investimento</h3>

1. **Brief Description**
Este caso de uso descreve a deleção de produtos existentes na Chacão Investimentos.
____
2. **Actors**
- Administrador
____
3. **Preconditions**
- Existir funcionalidades implementadas que dão suporte à deleção de usuários existentes
- As relações entre as tabelas precisam estar bem definidas, assim como a especificação do que deve ocorrer em caso de exclusão de registros de uma tabela 
____
4. **Basic Flow of Events**
- O caso de uso começa quando um produto precisa ser removido do sistema
- Neste caso, o administrador sempre irá remover o produto e será redirecionado à página que lista os produtos da plataforma
____
1. **Alternative Flows**
- Relações não tão bem definidas entre tabelas
____
6. **Key Scenarios**
- Erro de deleção devido às relações não tão bem definidas
____
7. **Successful Completion**
- Deleção do produto

____
____
<h3 align="center">Realizar aplicação em produto de investimento</h3>

1. **Brief Description**
Este caso de uso descreve as aplicações em produtos de investimento na Chacão Investimentos.
____
2. **Actors**
- Cliente
____
3. **Preconditions**
- Existir o produto de investimento criado
- O valor na conta do cliente é maior que a aplicação a ser realizada 
____
4. **Basic Flow of Events**
- O caso de uso começa quando uma aplicação em produto de investimento precisa ser realizada
- Neste caso, o cliente sempre irá escolher a aplicação a ser realizada além dos valores/quantidades
____
5. **Alternative Flows**
- Dinheiro insuficiente na conta do cliente
- Produto indisponível
____
6. **Key Scenarios**
- Erro na realização da aplicação devido a falta de dinheiro na conta do cliente 
- Aplicações feitas enquanto o cliente escolhia a sua aplicação, o que ocorreu na indisponibilidade do produto
____
7. **Successful Completion**
- Aplicação realizada
- O cliente recebeu a aplicação
- Dados internos atualizados

____
____
<h3 align="center">Cancelar aplicação em produto de investimento</h3>

1. **Brief Description**
Este caso de uso descreve o cancelamento em produtos de investimento na Chacão Investimentos.
____
2. **Actors**
- Cliente
____
3. **Preconditions**
- Existir a aplicação do investimento
____
4. **Basic Flow of Events**
- O caso de uso começa quando uma aplicação em produto de investimento precisa ser cancelada
- Neste caso, o cliente sempre irá escolher a aplicação a ser cancelada e precisará confirmar a ação
____
5. **Alternative Flows**
- A aplicação não pode ser cancelada por conta do prazo estimado da aplicação
____
6. **Key Scenarios**
- Erro no cancelmaneto da aplicação devido aos prazos predefinidos
____
7. **Successful Completion**
- Aplicação cancelada
- Dados internos atualizados

____
____
<h3 align="center">Listagem de aplicações de investimentos realizadas</h3>

1. **Brief Description**
Este caso de uso descreve a listagem de produtos de investimento na Chacão Investimentos.
____
2. **Actors**
- Cliente
____
3. **Preconditions**
- Existir aplicações de investimento vínculadas ao cliente
____
4. **Basic Flow of Events**
- O caso de uso começa quando o cliente acessa a listagem de aplicações realizadas por ele
- Verifica se existem restrições de acesso entre os produtos e o usuário que está acessando
- Neste caso, o cliente sempre irá visualizar as aplicações realizadas e poderá selecionar um produto, filtrar por categorias, ir para outra parte do sistema ou deslogar da plataforma
____
5. **Key Scenarios**
- Sem resposta do banco de dados
- Nenhuma aplicação realizada
____
6. **Successful Completion**
- Listagem de aplicações disponibilizada
____