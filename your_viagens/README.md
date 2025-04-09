## **App: Your Viagens**
**Descrição:** Aplicação desenvolvida para estudo de um caso real aplicado de RAG para uma agência de viagem. Diferentes métodos de consulta vetorial foram testados, o projeto mostra as estratégias e discussão sobre o assunto

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

**Criação de schedulers**: Após instalação da aplicação no APEX, conecte-se via SQL Developer ou SQL PLUS e faça a criação dos , schedulers, NÃO RODE a criação dos scheduler dentro do APEX no SQL Workshop. Os schedulers a serem criados são CREATE_APEX_JOB, RESET_APEX_JOB e DELETE_USER_JOB e os mesmos se encontram nos arquivos de instalação de objetos de banco (comentados)

---

### **Como Utilizar essa Aplicação**

A aplicação foi construida para ter 2 experiências:

**1. Clientes:** O objetivo central da aplicação é ter um guia de bolso para consultas rápidas de roteiro durante a viagem, além de ajudar a se organizar com a digitalização dos documentos necessários.
A criação do username e senha será efetuado pela Agência, tendo em mãos as informações de acesso, realize o login na plataforma

* **1ª etapa** - A agência irá realizar um cadastro básico, recomendamos que antes de mais nada complete as suas informações pessoais clicando na guia minhas informações; Faça o preenchimento do formulário, além de anexar os documentos requisitados. 
* **2ª etapa** - Concluido o seu cadastro clique na aba minhas viagens, escolha a viagem (caso deseje, faça o download do arquivo roteiro em pdf) e clique em carregar diário
* **3ª etapa** - O arquivo de configuração da viagem será processado e você conseguirá visualizar cada um dos dias de sua viagem, além de ver os principais tópicos programados para cada dia. Clicando nos cards ou no icone do canto inferior direito você abrirá nossa AI
* **4ª etapa** - Nossa AI esta programada para perguntas que estejam atreladas ao seu roteiro, fique a vontade para perguntar quaisquer informações relacionadas a sua viagem
<br>


**2. Agência:** O profissional que trabalha na agencia terá que realizar algumas atividades para preparar a aplicação para o cliente final, antes de mais anda faça o login na aplicação

* **1ª etapa** - A primeira etapa de configuração é criar uma viagem: clique no icone ou aba correspondente, clique em adicionar viagem, e faça o preechimento das informações da viagem. Tente colocar um nome que esteja relacionado aos usuários que estaram na mesma e uma associação de data; Exemplo: Viagem Italia Tais e Familia 04/25. Nesse primeiro momento não temos usuários, logo pode deixar a sessão quem irá viajar em branco 
* **2ª etapa** - A segunda etapa de configuração é fazer o upload dos documentos, clique na aba arquivos, clique em carregar arquivo, selecione a viagem, marque Arquivo p/ uso de AI? e faça o upload dos documentos (afim de garantir maior acertividade para AI, para cada viagem recomendamos que façam o upload de dois arquivos: roteiro.pdf - arquivo que a Lau ja manda por padrão; roteiro.json - arquivo que aconselhamos que seja criado no deepseek usando o seguinte prompt)

```
com base no texto, crie um arquivo json com informações resumidas conforme estrutura - sempre coloque horários de meios e transporte forneça os restaurantes citados no texto e pontos de vizitação, coloque todos os dias da viagem no formato dd/mm/yyyy sem saltar nenhum
'"viagem": {"participantes": [],"periodo": "","destino": "","cidades": [],"roteiro": {"pre_viagem": {"documentos": [],"eletronicos": [],"seguranca": [],"apps": []},"diario": [{"data": "","cidade": "", "atividades": [], "restaurantes": []}]}}' 

<copie todo o conteudo do arquivo roteiro.pdf e cole ele aqui abaixo>

```
* **3ª etapa** - A terceira etapa consiste em criar os usuários na plataforma, clique em usuários e adicionar usuário; Faça o preenchimento do nome completo, email e no final do formulário a senha provisória, clique em criar. Por último volte na aba viagens, encontre a viagem que você cadastrou na etapa 1 e adicione o novo usuário na mesma. 

* **4ª etapa** - Encaminhe o acesso ao usuário final, username = email cadastrado e senha = senha provisória. No primeiro acesso será recomendado que o usuário faça a troca 

<br>