## **App: Speech2Text**
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX + Object storage como ferramenta de controle e gestão de videos, além de utilizar o Oracle Speech2Text para transcrição do conteúdo de audio do video

**Autor:** Caio Oliveira, Gabriela Miyazima e Isabelle Anjos  

---

### **Procedimento Adicionais de Instalação**

**1) Criação de Bucket - Object Storage OCI**: Na sua conta OCI faça a criação de 2 buckets standard na região de sua escolha. Dentro desse bucket é onde os dados irão residir (você deverá criar um bucket para recebimento dos arquivos e outro para o pós processamento do speech2text). BUCKET deve ficar na mesma região do speech2text (selecionar são paulo sempre)

![cms_imagem01](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI/imagens/cms_img01.png)

![cms_imagem02](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI/imagens/cms_img02.png)


Nesse bucket faça o upload de um arquivo qualquer e colete a URL gerada. Ela estará no seguinte formato: 
```

https://objectstorage.<REGIÃO>.oraclecloud.com/n/<OBJECTSTORAGE_ID_TENANCY>/b/<SEUBUCKET>/o/

```


![cms_imagem03](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI/imagens/cms_img03.png)

![cms_imagem04](https://github.com/caiogusto2/oracleapex/blob/81ef09e3a9c3e09e74f4d996839b972bc6c82832/CMS_OCI/imagens/cms_img04.png)

<br>
<br>
<br>
<br>

**2) Criação de credencial de autenticação com Object Storage OCI**: A aplicação de CMS utilizará um Autentication Token para comunicação com o OCI. Crie um Autentication Token na GUI OCI e execute o seguinte comando no sql workshop > sql commands no Oracle APEX

![cms_imagem05](https://github.com/caiogusto2/oracleapex/blob/b62dd3da5fb934825a23dd17e243944644db5e2f/CMS_OCI/imagens/cms_img05.png)

![cms_imagem06](https://github.com/caiogusto2/oracleapex/blob/b62dd3da5fb934825a23dd17e243944644db5e2f/CMS_OCI/imagens/cms_img06.png)

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

**3) Substituição de valores de variáveis na aplicação**: Após a instalação da aplicação via custom apps/gallery; Clique no app builder > edit application definition e siga para a sessão substitutions. Faça a alteração das variáveis LOCATION_URI e LOCATION_URI_OUTPUT, NOME_BUCKET_INPUT e NAMESPACE para a string coletada na etapa Criação de Bucket - Object Storage OCI

![cms_imagem07](https://github.com/caiogusto2/oracleapex/blob/6296deedb2e1a03058904e7cc670422e9592b49b/CMS_OCI/imagens/cms_img07.png)

![cms_imagem08](https://github.com/caiogusto2/oracleapex/blob/6296deedb2e1a03058904e7cc670422e9592b49b/CMS_OCI/imagens/cms_img08.png)

<br>
<br>
<br>
<br>

**4) Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

---

### **Como Utilizar essa Aplicação**

A aplicação contém 2 guias:

**1. Home:** Essa guia contém a listagem dos videos que foram inseridos na plataforma e um botão para upload; Durante o processo de upload é feito o upload do video mp4 para o bucket de recebimento, é iniciado o job de transcrição de audio do video e ao término do mesmo é feito o DML no DB Oracle

**2. Detalhes do Video:** Essa aba contém as informações a respeito da mídia inserida na plataforma. Com a possibilidade de download do video, transcrição e visualização do conteudo