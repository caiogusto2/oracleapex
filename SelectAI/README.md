## **App: Select AI**
**Descrição:** Aplicação desenvolvida para exemplificar o uso do Select AI

**Autor:** Oracle - https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3831&p210_wec=&session=5732094729224 

---

### **Procedimento Adicionais de Instalação**

**Configurar Select AI Profile**: No SQL Developer faça o setup de criação do profile AI, ajuste o script abaixo de acordo com as necessidades

```sql
BEGIN
   DBMS_CLOUD.CREATE_CREDENTIAL (
       credential_name => 'OBJ_STORE_CRED',
       user_ocid       => '<USER_OCID>',
       tenancy_ocid    => '<TENANCY_OCID>',
       private_key     => '<PRIVATE_KEY_SEM_CABEÇALHO_RODAPÉ>',
       fingerprint     => '<FINGERPRINT_CHAVE>');
END;
/

begin    
-- Drop the profile in case it already exists
dbms_cloud_ai.drop_profile(
    profile_name => 'genai',
    force => true
);    -- Create an AI profile that uses the default LLAMA model on OCI

  DBMS_CLOUD_AI.CREATE_PROFILE(                                              
      profile_name =>'genai',                                                             
      attributes   =>'{"provider": "oci",                                                                   
        "credential_name": "OBJ_STORE_CRED",
		"object_list": [{"owner": "<SCHEMA>"}],
        "oci_compartment_id": "<COMPARTMENT_OCID>"
       }');                                                                  
END;                                                                         
/   

EXEC DBMS_CLOUD_AI.set_profile('genai');

SELECT DBMS_CLOUD_AI.GENERATE(
    prompt       => 'what is oracle autonomous database',
    profile_name => 'genai',
    action       => 'chat')
FROM dual;

```

---

### **Como Utilizar essa Aplicação**

seguir passo a passo do hands on
https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3831&p210_wec=&session=14400440713115