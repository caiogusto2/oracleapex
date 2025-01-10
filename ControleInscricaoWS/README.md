## **App: Controle de Inscrição Hands On**
**Descrição:** Aplicação Desenvolvida para Controle de Inscrições Hands On em Eventos de Marketing  

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar Usuários e Permissões**: O controle de acesso e usuários é feito diretamente utilizando contas cadastradas na instância APEX, abaixo instruções para cadastro de usuários e configuração de acessos:
* **Administrar Usuários Instância APEX:** Clicar no avatar no canto superior direito (boneco com chave de inglesa) e ir em Manage users and groups
* **Configuração de Acessos:** Clicar em App Builder, selecionar aplicação Controle Inscrição Hands On, Shared Components e Application Access Control (na sessão Security). Dentro dessa sessão clicar em Add User Role Assigment, colocar o nome do usuário a ser adicionado na aplicação e a role a ser atribuida (administrator, contributor e reader)

---

### **Como Utilizar essa Aplicação**

A aplicação contém 2 interfaces destinadas a públicos destintos:

**1. Interface Privada:** Ambiente para que o staff tenha controle dos workshops e clientes cadastrados
  * **Distribuição Bases:** Sessão demonstrando a funcionalidade de mapas do APEX, apresentando as diferentes bases navais espalhadas pelo Brasil de acordo com a evolução dos anos
  * **Embarcações Ano a Ano e Predição Usando OML:** Sessão contendo um exemplo de agregação da quantidade total de embarcações da Marinha e uma predição utilizando OML4SQL do tipo time series
  * **Embarcações 2023:** Sessão contendo um exemplo de gráfico de pizza mostrando a distribuição de tipos de embarcação no ano de 2023
  * **Qtde Embarcações Ano a Ano:** Sessão contendo um exemplo de gráfico de barras mostrando a qtde total de embarcações por estado, ano a ano
  * **Busca In/Out:** Sessão contendo um exemplo da funcionalidade de spatial do banco de dados Oracle, validando se um endereço se encontra dentro ou fora do polígono desenhado (mapa de São Paulo). A guia de endereço utiliza a package SDO_GCDR.ELOC_GEOCODE exclusiva do banco de dados Autonomous que faz o procedimento de conversão de um endereço para um ponto geográfico (latitude e longitude)
  * **Tranferência de Embarcações entre Regiões e Tranferência de Embarcações entre Regiões - Mapa:** Sessão contendo uma demonstração do plugin de grafos no APEX, ambas sessões demonstram a evolução temporal de transferência de embarcações entre bases navais. A primeira sessão mostra a evolução dessa rede sem o uso de geolocalização e a outra demonstra a mesma evolução e dados, porém plotando as bases navais em seus pontos geográficos

**2. Interface Pública:** Ambiente para que os clientes façam a inscrição nas diferentes sessões de workshops disponíveis no evento