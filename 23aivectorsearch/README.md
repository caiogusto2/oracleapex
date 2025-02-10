## **App: Oracle 23ai Vector Search**
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai sem a parte de convergência. `Aplicação desenvolvida para rodar no APEX 24.2`

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

---

### **Como Utilizar essa Aplicação**

A aplicação contém 2 guias na aba de navegação:

**1. Assistente AI:** Sessão contendo uma área de pesquisa para consulta dos documentos registrados na aba Arquivos e Normas. A utilização é bem intuitiva, inicialmente você faz o upload dos arquivos na aba Arquivos e Normas, seleciona a fonte de dados de sua consulta, escreve sua pergunta e clica em pesquisar. Essa sessão irá executar um RAG completo, fazendo a consulta vetorial no banco Oracle 23ai, enviando as perguntas + chunks para o genai do OCI e por fim retornando o output apresentado

**2. Arquivos e Normas:** Sessão onde faremos o upload de arquivos texto que serão utilizados na sessão Assistente AI, basta clicar em upload, colocar o nome do arquivo, selecionar um arquivo local, definir a configuração JSON para os chunks e clicar em create. Abaixo um exemplo de JSON que pode ser utilizado para grande parte dos documentos. Dúvidas e outras configurações, consultar documentação vigente
```json
{
    "by" : "words",
    "max" : "200",
    "overlap" : "0",
    "split": "sentence",
    "language" : "ptb",
    "normalize": "none"
}
```