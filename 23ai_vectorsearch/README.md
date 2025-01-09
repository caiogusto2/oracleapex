# App: RAG - Oracle 23ai Vector Search + GenAI

**Descrição:**  
Aplicação desenvolvida para demonstrar os recursos e funcionalidades do Banco de Dados Oracle 23ai, incluindo Vector Search em dados não estruturados e uso de GenAI para um processo completo de Recuperação de Respostas Assistida (RAG).

**Autor:**  
Caio Oliveira  

---


## **Procedimento de Uso**
Acesse a aba Arquivos e Normas e realize o upload de arquivos texto.
Utilize o seguinte JSON como exemplo para criação de chunks:

```json
{
    "by": "words",
    "max": "50",
    "overlap": "0",
    "split": "sentence",
    "language": "ptb",
    "normalize": "none"
}
```

Após importar os arquivos texto, acesse a página Assistant AI e realize perguntas livres sobre os documentos carregados.