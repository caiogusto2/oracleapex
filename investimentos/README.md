## **App: Controle Investimentos**
**Descrição:** Aplicação desenvolvida para controle de investimentos em CDBs

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar GenAI Services**: No APEX, vá para "Workspace Utilities" e configure Generative AI Services chamado de OCI_GEN_AI com suas credenciais OCI

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

**Configurar Authentication Scheme**: Configurar authentication scheme, esta utilizando o IDCS como ambiente de authenticação, dois grupos de usuários existem: app_user e app_admin

### **Como Utilizar essa Aplicação**

A aplicação contém as seguintes guias:

**1. Dashboard CDBs:** Mostra gráficamente a evolução do capital no tempo, tempos de vencimento dos contratos

**2. Lista CDBs:** mostra todos os investimentos da conta e tem o botão de acesso ao AI para consulta em linguagem natural

**3. Grupos e Empresas:** relação de conglomerados e bancos, informação importante para FGC

**4. Simulador CDB Pré:** um simulador para calculo de retorno de capital apos IR

**5. Monitoramento Carteira:** local para habilitar envio de email e controle geral da conta