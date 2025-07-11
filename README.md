
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
GRANT EXECUTE ON DBMS_LOCK TO DEMO;
GRANT EXECUTE ON DBMS_CLOUD_AI TO DEMO;

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
```
https://raw.githubusercontent.com/caiogusto2/oracleapex/refs/heads/main/manifest.json
```
* Habilitar upload de arquivos em páginas públicas: no workspace internal ir em manage instance > security > Allow Public File Upload = YES

### 4. Deploy da Aplicação
* Acesse a Galeria de Aplicativos em "Custom Apps".
* Realize o deploy da aplicação desejada e visite os links dos repositórios abaixo para mais informações

---

# Repositório Projetos APEX

#### _App: Controle de Inscrição Hands On_
**Descrição:** Aplicação Desenvolvida para Controle de Inscrições Hands On em Eventos de Marketing  

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/ControleInscricaoWS](https://github.com/caiogusto2/oracleapex/tree/main/ControleInscricaoWS)

#### _App: Dataset Público Marinha - Oracle DB Convergente_
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai. Oracle Machine Learning (OML), Spatial and Graphs, Vector Search, JSON on Oracle DB, etc

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/dbconvergente_marinha](https://github.com/caiogusto2/oracleapex/tree/main/dbconvergente_marinha)

#### _App: Oracle 23ai Vector Search_
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai. `Aplicação desenvolvida para rodar no APEX 24.2` 

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/23aivectorsearch](https://github.com/caiogusto2/oracleapex/tree/main/23aivectorsearch)

#### _App: CMS - OCI_
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX + Object storage como ferramenta de controle e gestão de arquivos. 

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/CMS_OCI](https://github.com/caiogusto2/oracleapex/tree/main/CMS_OCI)

#### _App: SOS APP_
**Descrição:** Aplicação desenvolvida para innovation camp 2025 com o objetivo de criar um app de boletim e ocorrências emergenciais online. A aplicação também exemplifica o self checkin para aplicações apex  

**Autor:** Caio Oliveira, Isabelle Anjos, Julia Sant'Anna e Nikolly Amancio  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/sos](https://github.com/caiogusto2/oracleapex/tree/main/sos)

#### _App: Your Viagens_
**Descrição:** Aplicação desenvolvida para estudo de um caso real aplicado de RAG para uma agência de viagem. Diferentes métodos de consulta vetorial foram testados, o projeto mostra as estratégias e discussão sobre o assunto  

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/your_viagens](https://github.com/caiogusto2/oracleapex/tree/main/your_viagens)

#### _App: Caiu no Golpe_
**Descrição:** Aplicação desenvolvida para demonstração de como realizar uma investigação através do uso de grafos. Duas bases fictícias são utilizadas: financeira; e midias sociais;  

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/caiunogolpe](https://github.com/caiogusto2/oracleapex/tree/main/caiunogolpe)

#### _App: Controle Investimentos_
**Descrição:** Aplicação desenvolvida para controle de investimentos em CDBs;  

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/investimentos](https://github.com/caiogusto2/oracleapex/tree/main/investimentos)

#### _App: Oracle 23ai Vector Search - Imagem_
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai. Consulta vetorial em banco de imagens  

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/23aivectorimg](https://github.com/caiogusto2/oracleapex/tree/main/23aivectorimg)

#### _App: Speech2Text_
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX + Object storage como ferramenta de controle e gestão de videos, além de utilizar o Oracle Speech2Text para transcrição do conteúdo de audio do video  

**Autor:** Caio Oliveira, Gabriela Miyazima e Isabelle Anjos  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/speech2text](https://github.com/caiogusto2/oracleapex/tree/main/speech2text)

#### _App: Data Catalog_
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX junto do pilar de data engineering. Catálogo de dados contendo datasets/datamarts importados para o ADB em que a aplicação apex esta rodando.   

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/DataCatalog](https://github.com/caiogusto2/oracleapex/tree/main/DataCatalog)

#### _App: Data Marketplace_
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX junto do pilar de data engineering. Catálogo de dados contendo datasets/arquivos disponibilizados em object storage.   

**Autor:** Caio Oliveira  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/datamarket](https://github.com/caiogusto2/oracleapex/tree/main/datamarket)

#### _App: Select AI_
**Descrição:** Aplicação desenvolvida para exemplificar o uso do Select AI.   

**Autor:** Oracle - https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3831&p210_wec=&session=5732094729224  
**Link:** [https://github.com/caiogusto2/oracleapex/tree/main/SelectAI](https://github.com/caiogusto2/oracleapex/tree/main/SelectAI)