
## **Procedimento de Instalação**

As demonstrações desse repositório foram todas feiras em autonomous database em OCI, porém podem ser facilmente adaptadas para ambientes rodando instalações Oracle APEX fora de bancos de dados autonomous

### 1. Criar um Banco de Dados Autonomous
Crie e configure um banco de dados autonomous no oracle cloud infrastructure (OCI) na **versão 23ai** (região de GRU por exemplo).

### 2. Criar Usuário `demo` e Conceder Permissões
Conecte-se ao **SQL Developer Web** e execute os comandos abaixo:

```sql
CREATE USER demo IDENTIFIED BY "<sua_senha>";
GRANT dwrole TO demo;
GRANT unlimited tablespace TO demo;
GRANT READ, WRITE ON DIRECTORY data_pump_dir TO demo;
GRANT EXECUTE ON DBMS_CLOUD TO demo;
GRANT CREATE PROPERTY GRAPH TO demo;

BEGIN
  DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
    host => '*',
    ace => xs$ace_type(privilege_list => xs$name_list('connect'),
                       principal_name => 'DEMO',
                       principal_type => xs_acl.ptype_db));
END;
/ 

```

### 3. Configurar a Instância APEX
* Conecte-se ao oracle APEX no workspace internal e crie um workspace utilizando o schema demo configurado anteriormente.
* Configure a instância APEX para acessar o arquivo manifest.json no seguinte link (caminho - manage instance > instance settings > Application Gallery > colocar a url abaixo da url já existente):
https://raw.githubusercontent.com/caiogusto2/oracleapex/refs/heads/main/manifest.json
* Habilitar upload de arquivos em páginas públicas: no workspace internal ir em manage instance > security > Allow Public File Upload = YES

### 4. Deploy da Aplicação
* Acesse a Galeria de Aplicativos em "Custom Apps".
* Realize o deploy da aplicação desejada e visite os links dos repositórios abaixo para mais informações

---

# Repositório Projetos APEX

#### _App: Controle de Inscrição Hands On_
**Descrição:** Aplicação Desenvolvida para Controle de Inscrições Hands On em Eventos de Marketing  

**Autor:** Caio Oliveira  
Link: [https://github.com/caiogusto2/oracleapex/tree/main/ControleInscricaoWS](https://github.com/caiogusto2/oracleapex/tree/main/ControleInscricaoWS)

#### _App: Dataset Público Marinha - Oracle DB Convergente_
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai. Oracle Machine Learning (OML), Spatial and Graphs, Vector Search, JSON on Oracle DB, etc

**Autor:** Caio Oliveira  
Link: [https://github.com/caiogusto2/oracleapex/tree/main/dbconvergente_marinha](https://github.com/caiogusto2/oracleapex/tree/main/dbconvergente_marinha)

#### _App: Dataset Público PRF/Bradesco - Oracle DB Convergente_
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai. Oracle Machine Learning (OML), Spatial and Graphs, Vector Search, JSON on Oracle DB, etc

**Autor:** Caio Oliveira  
Link: [https://github.com/caiogusto2/oracleapex/tree/main/dbconvergente_bradesco](https://github.com/caiogusto2/oracleapex/tree/main/dbconvergente_bradesco)

#### _App: Oracle 23ai Vector Search_
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai sem a parte de convergência. `Aplicação desenvolvida para rodar no APEX 24.2` 

**Autor:** Caio Oliveira  
Link: [https://github.com/caiogusto2/oracleapex/tree/main/23aivectorsearch](https://github.com/caiogusto2/oracleapex/tree/main/23aivectorsearch)