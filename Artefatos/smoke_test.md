<h1 align="center">Chacão Investimentos</h1>
<h2 align="center">Smoke Test</h2>

____

|T. ID|Test Scenarios|Description|Test Step|Expected Result|Actual Result|
|:----:|:----:|:----:|:----:|:----:|:----:|
|1|Criação de novos usuários|Teste da funcionalidade de criação de novos usuários que não possuem permissões administrativas|1. Entre no site<br>2. Clique na opção cadastrar no menu inicial<br>3.Inserir valores válidos para todos os campos de cadastro  de usuário<br>4.Clicar em cadastrar|Usuário criado com sucesso|Conforme o esperado|
|2|Credenciais de login válidos|Teste da funcionalidade de login da aplicação para garantir que um usuário registrado tenha permissão para fazer login com CPF e senha|1. Entre no site<br>2. Navegue para a página de login<br>3.Inserir CPF válido<br>4.Inserir senha válida<br>5.Clicar no botão acessar|Login efetuado com sucesso|Conforme o esperado|
|3|Criação de produtos de investimento|Teste da funcionalidade de criação de produtos de investimento para usuários administradores|1. Entre no site como usuário administrador<br>2. Navegue para a página de criação de produtos de investimento correspondente (Renda Fixa, Fundo de Investimento ou Tesouro Direto)<br>3.Inserir valores válidos para todos os campos<br>4.Clicar em adicionar|Produto de investimento criado com sucesso|Conforme o esperado|
|4|Visualização de produtos de investimento|Teste da funcionalidade de visualização dos produtos de investimentos|1. Acesse a plataforma<br>2. Na página inicial clique em "Ver produtos de investimento"|Listagem de produtos de investimentos realizada com sucesso|Conforme o esperado|
|5|Filtragem de produtos de investimento|Teste da funcionalidade de filtragem dos produtos de investimentos|1. Acesse a plataforma<br>2. Na página inicial clique em "Ver produtos de investimento"<br>3. Escolha a categoria do produto a ser filtrada (Renda Fixa, Fundo de Investimento ou Tesouro Direto)|Listagem apenas dos produtos da categoria selecionada|Conforme o esperado|
|6|Visualização de um produto de investimento|Teste da funcionalidade de visualização de produto de investimento específico|1. Acesse a plataforma<br>2. Na página inicial clique em "Ver produtos de investimento" <br>3.Selecione um produto de investimento|Informações do produto disponibilizadas|Conforme o esperado|
|7|Compra de produtos de investimento|Teste da funcionalidade de compra de produtos de investimento|1. Faça a autenticação para acessar a plataforma como usuário<br>2. Navegue para a página de produtos de investimentos (index) <br>3.Selecione um produto de investimento (Renda Fixa, Fundo de Investimento ou Tesouro Direto)<br>4.Clicar em realizar aplicação|Aplicação financeira realizada com sucesso|Conforme o esperado|
|8|Remoção de produtos de investimento|Teste da funcionalidade de remoção de produtos de investimento para usuários administradores|1. Entre no site como usuário administrador<br>2.Selecione um produto de investimento<br>3. Clique em excluir|Produto excluído com sucesso|Conforme o esperado|


____

<h2 align="center">Especificação de Dados</h2>

##### T. ID 1 - Criação de novos usuários
1. Entre no site<br>2. Clique na opção cadastrar no menu inicial<br>3.Inserir valores válidos para todos os campos de cadastro  de usuário<br>4.Clicar em cadastrar
1.  Entre no site
2.  Clique na opção cadastrar no menu inicial
3. No campo nome digite:  Fernando;
4. No campo CPF digite: 86420785022;
5. No campo senha:  39182esj281;
6. No campo telefone digite: 61981976320;
7. No campo banco digite:  Banco do Brasil;
8. No campo agencia digite:  3603;
9. No campo conta digite: 58354;
10. No campo CEP digite: 70830500;
11. No campo endereço digite: SGAN 611;
12. No campo cidade digite: Brasília;
13. No campo Estado digite: DF;
14. Clique em Cadastrar;
15. Uma mensagem de 'Cadastro realizado com sucesso irá aparecer.

____

##### T. ID 2 - Credenciais de login válidos

1. Entre no site
2. Navegue para a página de login
3. No campo CPF inserir: 86420785022
4. No campo senha inserir: 39182esj281
5. Clicar no botão acessar
6. O usuário será logado com sucesso.

____

##### T. ID 3 - Criação de produtos de investimento

1. Entre no site como usuário administrador
   1. CPF: 92482292042
   2. Senha: 1234
2. Navegue para a página de criação de produtos de investimento correspondente Fundo de Investimento
3. No campo nome do produto digite: Riza Daikon
4. No campo classe digite: Cambial
5. No campo prazo de resgate digite: D + 30
6. No campo valor mínimo da aplicação digite: 25
7. Clicar em adicionar
8. Aparecerá uma mensagem de produto inserido com sucesso

____

##### T. ID 4 - Visualização de produtos de investimento

1. Acesse a plataforma
2. Na página inicial clique em "Ver produtos de investimento"

____

##### T. ID 5 - Filtragem de produtos de investimento

1. Acesse a plataforma
2. Na página inicial clique em "Ver produtos de investimento"
3. Escolha a categoria Renda Fixa
4. Não deverá aparecer nenhum produto, visto que só criamos um produto de Fundo de Investimento

____

##### T. ID 6 - Visualização de um produto de investimento

1. Acesse a plataforma
2. Na página inicial clique em "Ver produtos de investimento" 
3. Selecione o produto Riza Daikon
4. Todas as informações do produto serão disponibilizadas, assim como a opção de adquirí-lo

____

##### T. ID 7 - Compra de produtos de investimento

1. Faça a autenticação para acessar a plataforma como usuário
   1. No campo CPF digite: 86420785022
   2. No campo senha:  39182esj281
   3. Clique em acessar
2. Navegue para a página de produtos de investimentos (index), através do botão "Ver produtos de investimento"
3. Selecione o produto Riza Daikon
4. Clicar em realizar aplicação
5. Aparecerá uma mensagem de aplicação realizada com sucesso


____

##### T. ID 7 - Remoção de produtos de investimento

1. Entre no site como usuário administrador
   1. CPF: 92482292042
   2. Senha: 1234
   3. Clique em acessar
2. Selecione o produto Riza Daikon
3. Clique em excluir
4. Aparecerá uma mensagem de produto excluído com sucesso

____