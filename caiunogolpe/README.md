## **App: Caiu no Golpe**
**Descrição:** Aplicação desenvolvida para demonstração de como realizar uma investigação através do uso de grafos. Duas bases fictícias são utilizadas: financeira; e midias sociais;

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

**Configurar Vector Provider**: No APEX, vá para "Workspace Utilities" e configure os vector providers, infloat e cohere com suas credenciais OCI.

**Configurar chatbot AI**: script para popular tabela esta no final dos supporting objects

**Notebook OML**: importar notebook e executar o mesmo para criar a tabela de fraudes - URL download notebook

```
https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/fxGOdUcjASzXTNqya9srbbGCD9-c8YizwF1xfTQq-fdVtdT3yFBmGhCbhh-3HoC4/n/grplsopryjgk/b/demo23ai/o/anomalia-mp.dsnb
```

**Notebook GraphStudio**: importar notebook e executar o mesmo para criar grafos adicionais - URL download notebook

```
https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/df9Gz3lZR62Jw1vqwzpNKU-iIWlRcA2ACpp8H4idwd66lyer3Ng0HGklqQebtZs6/n/grplsopryjgk/b/demo23ai/o/Redes%20Criminosas%20-%20Dados%20Banc%C3%A1rios.dsnb
https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/Z74-gdUPyj9I-1_pRmXkVEqirR7QOhPDkEjh1QU5V2ZpSmCZow4t9e8fb36n-NIx/n/grplsopryjgk/b/demo23ai/o/Redes%20Criminosas%20-%20Redes%20sociais.dsnb
```

### **Como Utilizar essa Aplicação**

A aplicação contém 4 guias:

**1. Monitoramento:** Mostra alertas de transações potencialmente fraudulentas e posts/comentários que tenham certas palavras auditadas

**2. Avaliação Usuário:** A partir do CPF, conseguimos ver o cadastro do usuário em ambas bases, validar as últimas transações financeiras, sua rede de relacionamento nas mídias sociais, assim como atividades

**3. Cruzamento Bases:** Guia que tem o objetivo de analisar o relacionamento de vários CPFs, tanto nas redes sociais (quem segue quem), assim como na base financeira (quem transfere pra quem)

**4. Cruzamento Bases:** chatbot para consulta de informações dos usuários