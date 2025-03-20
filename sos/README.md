## **App: SOS APP**
**Descrição:** Aplicação desenvolvida para innovation camp 2025 com o objetivo de criar um app de boletim e ocorrências emergenciais online. A aplicação também exemplifica o self checkin para aplicações apex

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

**Criação de schedulers**: Após instalação da aplicação no APEX, conecte-se via SQL Developer ou SQL PLUS e faça a criação dos , schedulers, NÃO RODE a criação dos scheduler dentro do APEX no SQL Workshop. Os schedulers a serem criados são CREATE_APEX_JOB e RESET_APEX_JOB e os mesmos se encontram nos arquivos de instalação de objetos de banco (comentados)

---

### **Como Utilizar essa Aplicação**

A aplicação foi construida para ter 2 experiências:

**1. Cidadão:** O cidadão que deseje utilizar a aplicação deve realizar o seu cadastro na ferramenta (na tela de login). Feito o acesso, é recomendado que o usuário complemente suas informações pessoais na guia "Informações Pessoais". 
Concluído o cadastro ele consegue clicar no botão SOS e será transferido para o fluxo de abertura de boletim de ocorrência. No fluxo temos 3 etapas: 
 1ª etapa - O usuário pode relatar o ocorrido por audio e/ou digitar; 
 2ª etapa - O relato é processado por GenAI a qual corrige a estrutura do texto, ortografia, faz um resumo do ocorrido e classifica a ocorrência. Nessa guia ainda conseguimos colocar anexos, arquivos, fotos (no celular irá abrir a câmera traseira do dispositivo)
 3ª etapa - É apresentado o número de protocolo do incidente, um mapa mostra sua localização e centrais de atendimento próximo. Clicando nos pontos do mapa conseguimos entrar em contato com as centrais ou encerrar o atendimento
Por último conseguimos visualizar na guia "Historico Acionamentos" todos os boletins de ocorrência abertos, tão como consultar informações inseridas

**2. Policial:** Sessão onde faremos o upload de arquivos texto que serão utilizados na sessão Assistente AI, basta clicar em upload, colocar o nome do arquivo, selecionar um arquivo local, definir a configuração JSON para os chunks e clicar em create. Abaixo um exemplo de JSON que pode ser utilizado para grande parte dos documentos. Dúvidas e outras configurações, consultar documentação vigente
