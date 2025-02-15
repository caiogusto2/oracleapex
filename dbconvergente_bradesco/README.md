## **App: Dataset Público PRF/Bradesco - Oracle DB Convergente**
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai. Oracle Machine Learning (OML), Spatial and Graphs, Vector Search, JSON on Oracle DB, etc

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

---

### **Como Utilizar essa Aplicação**

A aplicação contém 4 guias na aba de navegação:

**1. Home:** Sessão contendo alguns exemplos de como utilizar o banco de dados oracle como solução convergente. Abaixo a descrição de cada uma das sessões dessa página
  * **Distribuição Acidentes SP:** Sessão demonstrando a funcionalidade de mapas do APEX, apresentando os diferentes tipos de acidentes espalhados pelo estado de São Paulo
  * **Série Histórica Acidentes +Previsão:** Sessão contendo um exemplo de agregação da quantidade total de acidentes no ano de 2024 e predição utilizando OML4SQL do tipo time series
  * **Acidentes por Condição Metereologica:** Sessão contendo um exemplo de gráfico de pizza mostrando a distribuição de acidentes por condição metereologica
  * **Causa Acidente:** Sessão contendo um exemplo de gráfico de barras mostrando a qtde total de acidentes de acordo com as diferentes causas
  * **Busca In/Out - Área de Cobertura Seguro:** Sessão contendo um exemplo da funcionalidade de spatial do banco de dados Oracle, validando se um endereço se encontra dentro ou fora do polígono desenhado (mapa de São Paulo). A guia de endereço utiliza a package SDO_GCDR.ELOC_GEOCODE exclusiva do banco de dados Autonomous que faz o procedimento de conversão de um endereço para um ponto geográfico (latitude e longitude)
  * **Cidades Visitadas por Veículo Envolvido em Acidente e Cidades Visitadas por Veículo Envolvido em Acidente - Mapa:** Sessão contendo uma demonstração do plugin de grafos no APEX, ambas sessões demonstram a evolução temporal de um veículo entre cidades. A primeira sessão mostra a evolução dessa rede sem o uso de geolocalização e a outra demonstra a mesma evolução e dados, porém plotando as cidades em seus pontos geográficos

**2. Dataset:** Sessão contendo uma pesquisa facetada (filtros a esquerda e um report simples a direita) a base de dados que sustenta as diferentes sessões da aba home

**3. Assistente AI:** Sessão contendo uma área de pesquisa para consulta dos documentos registrados na aba Arquivos e Normas. A utilização é bem intuitiva, inicialmente você faz o upload dos arquivos na aba Arquivos e Normas, seleciona a fonte de dados de sua consulta, escreve sua pergunta e clica em pesquisar. Essa sessão irá executar um RAG completo, fazendo a consulta vetorial no banco Oracle 23ai, enviando as perguntas + chunks para o genai do OCI e por fim retornando o output apresentado

**4. Arquivos e Normas:** Sessão onde faremos o upload de arquivos texto que serão utilizados na sessão Assistente AI, basta clicar em upload, colocar o nome do arquivo, selecionar um arquivo local, definir a configuração JSON para os chunks e clicar em create. Abaixo um exemplo de JSON que pode ser utilizado para grande parte dos documentos. Dúvidas e outras configurações, consultar documentação vigente
```json
{
    "by" : "words",
    "max" : "50",
    "overlap" : "0",
    "split": "sentence",
    "language" : "ptb",
    "normalize": "none"
}
```