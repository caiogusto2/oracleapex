## **App: CMS - OCI**
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX + Object storage como ferramenta de controle e gestão de arquivos.

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Criação de Bucket - Object Storage OCI**: Na sua conta OCI faça a criação de um bucket standard na região de sua escolha. Dentro desse bucket é onde os dados irão residir. Nesse bucket faça o upload de um arquivo qualquer e colote a URL gerada. Ela estará da seguinte maneira: 
```

https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/

```

**Criação de credencial de autenticação com Object Storage OCI**: A aplicação de CMS utilizará um Autentication Token para comunicação com o OCI. Crie um Autentication Token na GUI OCI e execute o seguinte comando no sql workshop > sql commands no Oracle APEX

```
begin
  dbms_cloud.create_credential (
    credential_name => 'CREDENCIALOS',
    username        => '<SEU_USUARIO_OCI>',
    password        => '<AUTH_TOKEN_USUARIO_OCI>'
  ) ;
end;
/

```

**Substituição de valores de variáveis na aplicação**: Após a instalação da aplicação via custom apps/gallery; Clique no app builder > edit application definition e siga para a sessão substitutions. Faça a alteração da variável LOCATION_URI para a string coletada na etapa Criação de Bucket - Object Storage OCI

**Habilitar APIs - Importe ORDS APIs**: Caso tenha interesse em habilitar as REST API's da aplicação, siga para SQL Workshop > Restful Data Services; Clique em Register Schema with ORDS (sem instalar exemplos); Clique no botão import e faça o upload do arquivo CMS-ORDS.sql

---

### **Como Utilizar essa Aplicação**

A aplicação contém 2 guias na aba de navegação:

**1. Upload Workloads:** Essa guia tem o objetivo de listar os arquivos csv que foram enviados ao ambiente cloud, existe um botão para download do template .csv correto a ser utilizado na ferramenta e por fim um botão para start do fluxo de upload de arquivo. 

A aplicação foi inicialmente concebida para upload de arquivos do tipo csv com um formato específico de colunas
* **CPF**
* **NOME_COMPLETO**
* **RUA**
* **NUMERO**
* **COMPLEMENTO**
* **CIDADE**
* **PREPOSICAO**
* **DATA_ATUALIZACAO**
* **CEP**
* **TELEFONE**
* **EMAIL**
As quais são submetidas a algumas validações:
* **Validação se o arquivo esta sem linhas**
* **Validação se o arquivo é do tipo csv**
* **Validação se o arquivo contém cabeçalho**
* **validação se o cabeçalho contém as colunas necessárias**
* **validação na quantidade de colunas**

**2. API Keys:** Sessão