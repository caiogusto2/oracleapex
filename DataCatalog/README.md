## **App: Data Catalog**
**Descrição:** Aplicação desenvolvida para exemplificar o uso do APEX junto do pilar de data engineering. Catálogo de dados contendo datasets/datamarts importados para o ADB em que a aplicação apex esta rodando.

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar GenAI Services**: No APEX, vá para "Workspace Utilities" e configure Generative AI Services chamado de OCI_GEN_AI com suas credenciais OCI

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

---

### **Como Utilizar essa Aplicação**

A aplicação foi desenvolvida para 2 níveis de acesso:

**1. Administrativo:** O acesso administrativo tem a responsabilidade de fazer a manutenção do catálogo: ele faz o cadastro dos datasets, configuração de perfil de acesso e consegue editar configurações após cadastro do dataset.

**2. Usuário de Negócios:** Os usuários de negócio tem o único objetivo de buscar pelo dataset desejado, acessar o link do OAC e ver informações sobre os metadados