# App: RAG - Oracle 23ai Vector Search + GenAI

**Descrição:**  
Aplicação desenvolvida para demonstrar os recursos e funcionalidades do Banco de Dados Oracle 23ai, incluindo Vector Search em dados não estruturados e uso de GenAI para um processo completo de Recuperação de Respostas Assistida (RAG).

**Autor:**  
Caio Oliveira  

---

## **Procedimento de Instalação**

### 1. Criar um Banco de Dados Autonomous
Configure um Banco de Dados Autonomous no Oracle Cloud com a **versão 23ai** (região de GRU por exemplo).

### 2. Criar Usuário `demo` e Conceder Permissões
Conecte-se ao **SQL Developer Web** e execute os comandos abaixo:

```sql
CREATE USER demo IDENTIFIED BY "<sua_senha>";
GRANT dwrole TO demo;
GRANT unlimited tablespace TO demo;
GRANT READ, WRITE ON DIRECTORY data_pump_dir TO demo;
GRANT EXECUTE ON DBMS_CLOUD TO demo;
GRANT CREATE PROPERTY GRAPH TO demo;
```

### 3. Configurar o APEX
* Conecte-se ao Oracle APEX e crie um workspace utilizando o usuário demo configurado anteriormente.
* Configure a instância APEX para acessar o arquivo manifest.json no seguinte link:
https://raw.githubusercontent.com/caiogusto2/oracleapex/refs/heads/main/manifest.json

### 4. Deploy da Aplicação
* Acesse a Galeria de Aplicativos em "Custom Apps".
* Realize o deploy da aplicação Oracle 23ai - Vector DB.

### 5. Configurar Web Credential
No APEX, vá para "Workspace Utilities" e configure uma web credential chamada apex_ai_cred com suas credenciais OCI.


## **Procedimento de Uso**
Acesse a aba Arquivos e Normas e realize o upload de arquivos texto.
Utilize o seguinte JSON como exemplo para criação de chunks:

```json
{
    "by": "words",
    "max": "50",
    "overlap": "0",
    "split": "sentence",
    "language": "ptb",
    "normalize": "none"
}
```

Após importar os arquivos texto, acesse a página Assistant AI e realize perguntas livres sobre os documentos carregados.