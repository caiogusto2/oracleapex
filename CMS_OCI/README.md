## **App: CMS - OCI**
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX + Object storage como ferramenta de controle e gestão de arquivos.

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Criação de Bucket - Object Storage OCI**: Na sua conta OCI faça a criação de um bucket standard na região de sua escolha. Dentro desse bucket é onde os dados irão residir. 

!(https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI/imagens/cms_img01.png)

Nesse bucket faça o upload de um arquivo qualquer e colete a URL gerada. Ela estará no seguinte formato: 
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

**Habilitar APIs - Importe ORDS APIs**: Caso tenha interesse em habilitar as REST API's da aplicação, siga para SQL Workshop > Restful Data Services; Clique em Register Schema with ORDS (sem instalar exemplos); Clique no botão import e faça o upload do arquivo <a href="https://raw.githubusercontent.com/caiogusto2/oracleapex/refs/heads/main/CMS_OCI/ords_import.sql" target="_blank">Baixar ords_import.sql</a>.

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

Uma vez que o upload do arquivo tenha sido concluido, temos a listagem do mesmo na tela e os botões de download e delete apresentados

**2. API Keys:** A aplicação de CMS desenvolvida pode ser manipulada pela GUI da interface 1 ou até mesmo por API, essa guia tem o objetivo de criar OAuth Clients para uso das APIs que estão protegidas. O usuário clica em criar nova e um formulário será aberto. Preenchendo os campos temos a criação de um Client ID e Client Secret a serem utilizados com as APIs para autenticação


API's disponíveis para consumo:
* **GET /recebimento**: API para listagem de todos os objetos contidos no bucket

  **Endpoint**: `https://<URL_ADB>/ords/demo/cms_oci/recebimento`

  **Parâmetros - object_storage_url**: Informar a URL do bucket do object storage.  
  Ex. `https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/`

  **Exemplo de Utilização**

```
  
  -- Chamada solicitando Token de autenticação
  curl  -i -k --user <CLIENT_ID>:<CLIENT_SECRET> \
        --data "grant_type=client_credentials" \
        https://<URL_ADB>/ords/demo/oauth/token
  
  -- Execução da API com token do request anterior
  curl  -X GET "https://<URL_ADB>/ords/demo/cms_oci/recebimento" \
        -H "object_storage_url: <URL_OS>" -H "Content-Type: application/json" \
        -H "Authorization: Bearer <TOKEN>"

```

* **GET /recebimento/:file_name**: API para download do arquivo especificado

  **Endpoint**: `https://<URL_ADB>/ords/demo/cms_oci/recebimento/:file_name`

  **Parâmetros - object_storage_url**: Informar a URL do bucket do object storage.  
  Ex. `https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/`

  **Exemplo de Utilização**

```
  
  -- Chamada solicitando Token de autenticação
  curl -i -k --user <CLIENT_ID>:<CLIENT_SECRET> \
        --data "grant_type=client_credentials" \
        https://<URL_ADB>/ords/demo/oauth/token
  
  -- Execução da API com token do request anterior
  curl -X GET "https://<URL_ADB>/ords/demo/cms_oci/recebimento/<NOME_ARQUIVO>" \
        -H "object_storage_url: <URL_OS>" -H "Content-Type: application/json" \
        -H "Authorization: Bearer <TOKEN>"

```

* **DELETE /recebimento/:file_name**: API para remoção do arquivo especificado

  **Endpoint**: `https://<URL_ADB>/ords/demo/cms_oci/recebimento/:file_name`

  **Parâmetros - object_storage_url**: Informar a URL do bucket do object storage.  
  Ex. `https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/`

  **Exemplo de Utilização**

```
  
  -- Chamada solicitando Token de autenticação
  curl -i -k --user <CLIENT_ID>:<CLIENT_SECRET> \
        --data "grant_type=client_credentials" \
        https://<URL_ADB>/ords/demo/oauth/token
  
  -- Execução da API com token do request anterior
  curl -X DELETE "https://<URL_ADB>/ords/demo/cms_oci/recebimento/<NOME_ARQUIVO>" \
        -H "object_storage_url: <URL_OS>" -H "Content-Type: application/json" \
        -d {} -H "Authorization: Bearer <TOKEN>"

```

* **POST /recebimento/:file_name**: API para upload do arquivo especificado

  **Endpoint**: `https://<URL_ADB>/ords/demo/cms_oci/recebimento/:file_name`

  **Parâmetros - object_storage_url**: Informar a URL do bucket do object storage.  
  Ex. `https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/`

  **Exemplo de Utilização**

```
  
  -- Chamada solicitando Token de autenticação
  curl -i -k --user <CLIENT_ID>:<CLIENT_SECRET> \
        --data "grant_type=client_credentials" \
        https://<URL_ADB>/ords/demo/oauth/token
  
  -- Execução da API com token do request anterior
  curl -X POST "https://<URL_ADB>/ords/demo/cms_oci/recebimento/<NOME_ARQUIVO>" \
        -H "object_storage_url: <URL_OS>" -H "Content-Type: text/csv" \
        --data-binary @./<NOME_ARQUIVO> -H "Authorization: Bearer <TOKEN>"

```