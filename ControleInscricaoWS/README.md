## **App: Controle de Inscrição Hands On**
**Descrição:** Aplicação Desenvolvida para Controle de Inscrições Hands On em Eventos de Marketing  

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Usuários e Permissões**: O controle de acesso e usuários é feito diretamente utilizando contas cadastradas na instância APEX, abaixo instruções para cadastro de usuários e configuração de acessos:
* **Administrar Usuários Instância APEX:** Clicar no avatar no canto superior direito (boneco com chave de inglesa) e ir em Manage users and groups
* **Configuração de Acessos:** Clicar em App Builder, selecionar aplicação Controle Inscrição Hands On, Shared Components e Application Access Control (na sessão Security). Dentro dessa sessão clicar em Add User Role Assigment, colocar o nome do usuário a ser adicionado na aplicação e a role a ser atribuida (administrator, contributor e reader)

---

### **Como Utilizar essa Aplicação**

A aplicação contém 2 interfaces destinadas a públicos destintos:

**1. Interface Privada:** Ambiente para que o staff tenha controle dos workshops e clientes cadastrados (apenas usuários administradores tem acesso completo as abas descritas)
  * **Landing Page:** Sessão contendo um resumo de clientes cadastrados por workshop e evento. Contém um filtro na parte superior (caso não queira filtra, basta deixar o mesmo em branco), um placar contendo a qtde total de hands on cadastrados na ferramenta, total de inscritos nos eventos, gráfico contendo número de vagas x inscritos nos workshops, gráfico de barra contendo a qtde de inscritos por tema, grafico de pizza contendo a distribuição de inscritos por dia de evento e por fim um calendario que traz a listagem de workshops
  * **Clientes em Hands On Ativos:** Sessão contendo a listagem de clientes cadastrados em handson que ainda estão com o status ativo, botões de busca e cadastro manual de usuários. Caso algum cliente deseje cancelar sua inscrição, basta encontrar o seu registro e colocar o status como inativo
  * **Lista de Hands On Ativos:** Sessão contendo a listagem de hands on cadastrados e com status ativo. Caso deseje cadastrar um novo hands on ou editar algum hands on ativo, basta clicar nos devidos locais dessa página. 
  `Lembrete 01:` Quando cadastrar um novo hands on, não se esqueça de colocar uma imagem, pois a mesma será utilizada na tela de cadastro dos usuários da Interface Pública; 
  `Lembrete 02:` Assim que um hands on tiver encerrado e os brindes tenham sido entregues aos usuários, basta vir nessa tela, mudar o status do handson para inativo e clicar no botão limpar usuários inativos (o qual irá limpar os usuário da aba clientes em hands on ativos)
  * **Lista de Hands On - Completa:** Sessão contendo a listagem completa de todos os hands on cadastrados na ferramenta. Para fazer o download basta clicar em actions e download
  * **Lista Clientes - Completa:** Sessão contendo a listagem completa de todos os clientes cadastrados na ferramenta. Para fazer o download basta clicar em actions e download
  * **Administration:** Sessão contendo alguns controles gerenciais da aplicação, como administração de usuários e grants, report de jobs e auditoria de ações

**2. Interface Pública:** Ambiente para que os clientes façam a inscrição nas diferentes sessões de workshops disponíveis no evento. Os hands on que estarão listados aqui serão um reflexo dos cadastros efetuados na aba Lista de Hands On Ativos da interface privada. A URL da Interface pública será: https://<domínio_do_seu_autonomous>/ords/r/demo/controlehandson/home 