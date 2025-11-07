## **App: CMS - OCI + Select AI**
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX + Object storage como ferramenta de controle e gestão de arquivos + funcionalidade de select AI com RAG

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**1) Criação de Bucket - Object Storage OCI**: Na sua conta OCI faça a criação de um bucket standard na região de sua escolha. Dentro desse bucket é onde os dados irão residir. 

![cms_imagem01](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI_SelectAI/imagens/cms_img01.png)

![cms_imagem02](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI_SelectAI/imagens/cms_img02.png)


Nesse bucket faça o upload de um arquivo qualquer e colete a URL gerada. Ela estará no seguinte formato: 
```

https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/

```


![cms_imagem03](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI_SelectAI/imagens/cms_img03.png)

![cms_imagem04](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI_SelectAI/imagens/cms_img04.png)

<br>
<br>
<br>
<br>

**2) Criação de credencial de autenticação com Object Storage OCI**: A aplicação de CMS utilizará um Autentication Token para comunicação com o OCI. Crie um Autentication Token na GUI OCI e execute o seguinte comando no sql workshop > sql commands no Oracle APEX

![cms_imagem05](https://github.com/caiogusto2/oracleapex/blob/b62dd3da5fb934825a23dd17e243944644db5e2f/CMS_OCI_SelectAI/imagens/cms_img05.png)

![cms_imagem06](https://github.com/caiogusto2/oracleapex/blob/b62dd3da5fb934825a23dd17e243944644db5e2f/CMS_OCI_SelectAI/imagens/cms_img06.png)

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
<br>
<br>
<br>
<br>

**3) Substituição de valores de variáveis na aplicação**: Após a instalação da aplicação via custom apps/gallery; Clique no app builder > edit application definition e siga para a sessão substitutions. Faça a alteração da variável LOCATION_URI para a string coletada na etapa Criação de Bucket - Object Storage OCI

![cms_imagem07](https://github.com/caiogusto2/oracleapex/blob/6296deedb2e1a03058904e7cc670422e9592b49b/CMS_OCI_SelectAI/imagens/cms_img07.png)

![cms_imagem08](https://github.com/caiogusto2/oracleapex/blob/6296deedb2e1a03058904e7cc670422e9592b49b/CMS_OCI_SelectAI/imagens/cms_img08.png)

<br>
<br>
<br>
<br>

**4) Criação de Profile e Configuração de Select AI**: Por último faça a configuração do select ai, exemplo abaixo

```
BEGIN
   DBMS_CLOUD.CREATE_CREDENTIAL (
       credential_name => 'OCIAI_CRED',
       user_ocid       => 'ocid1.user.oc1...',
       tenancy_ocid    => 'ocid1.tenancy.oc1...',
       private_key     => '<pem_key>',
       fingerprint     => 'fingerprint');
END;
/

begin
--    dbms_cloud_ai.drop_profile('GENAI_VECTOR');

    dbms_cloud_ai.create_profile(
        'GENAI_VECTOR',
        '{
            "provider": "oci",
            "credential_name": "OCIAI_CRED",
            "vector_index_name": "support",
            "region": "sa-saopaulo-1",
            "embedding_model":"cohere.embed-multilingual-v3.0"
        }'
    );

    dbms_cloud_ai.create_vector_index(
        index_name => 'support',
        attributes => '{
            "vector_db_provider": "oracle",
            "location": "https://objectstorage.sa-saopaulo-1.oraclecloud.com/n/idi1o0a010nx/b/demo_aidpf1_bkt_lobs/o/",
            "object_storage_credential_name": "CREDENCIALOS",
            "profile_name": "GENAI_VECTOR",
            "vector_dimension": 1024,
            "vector_distance_metric": "cosine",
            "chunk_overlap": 50,
            "chunk_size": 450,
            "refresh_rate": 1,
            "match_limit": 10
        }'
    );

--    dbms_cloud_ai.set_profile('GENAI_VECTOR');
end;
/

```

---

### **Como Utilizar essa Aplicação**

**1. Upload Workloads:** Essa guia tem o objetivo de listar os arquivos que foram enviados ao ambiente cloud.

A aplicação foi inicialmente concebida para upload de arquivos tendo a validação de não deixar documentos com o mesmo nome coexisirem

Uma vez que o upload do arquivo tenha sido concluido, temos a listagem do mesmo na tela e os botões de download e delete apresentados