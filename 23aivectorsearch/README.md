## **App: Oracle 23ai Vector Search**
**Descrição:** Aplicação Desenvolvida para demonstração de recursos e features do Banco de Dados Oracle 23ai sem a parte de convergência. `Aplicação desenvolvida para rodar no APEX 24.2`

**Autor:** Caio Oliveira  

---

### **Procedimento Adicionais de Instalação**

**Configurar GenAI Services**: No APEX, vá para "Workspace Utilities" e configure Generative AI Services chamado de OCI_GEN_AI com suas credenciais OCI

**Configurar Web Credential**: No APEX, vá para "Workspace Utilities" e configure a web credential chamada apex_ai_cred com suas credenciais OCI.

**Configurar Vector Provider**: No APEX, vá para "Workspace Utilities" e configure os vector providers, infloat e cohere com suas credenciais OCI.

**Configurar SODA Collections**: Habilitar MongoDB API no autonomous, importar SODA collections, comandos abaixo

```
files=(
    "geral.json"
    "ci_telefone.json"
    "ci_produto.json"
    "ci_meta.json"
    "ci_empresa.json"
    "ci_emparea.json"
    "ci_cidade.json"
    "ci_area.json"
)

### import json
export URI='mongodb://demo:WORKSHOPsec2019%23%23@<substituir pela URL da console, trocar username no final da string'

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        base_name="${file%.json}"
        jq -c '.[]' "$file" > "${base_name}_ndjson.json"
        mongoimport --collection "$base_name" --drop --tlsInsecure --uri "$URI" --file "${base_name}_ndjson.json"
        echo "Imported ${base_name}_ndjson.json"
    else
        echo "File $file not found"
    fi
done

```

Instruções para terminar demonstração de duality view

```sql
### Popular tabela cidade via Duality View
DECLARE
    CURSOR v1 IS
        SELECT data FROM ci_cidade;
BEGIN
    FOR rec IN v1 LOOP
        INSERT INTO cidade_dv (data)
        VALUES (rec.data);
    END LOOP;
END;
/

```

---

### **Como Utilizar essa Aplicação**

A aplicação contém 4 guias na aba de navegação:

**1. Home:** Sessão contendo alguns exemplos de uso de banco de dados convergente com uso de mapas, consultas no banco, plugin de grafos

**2. Dataset:** Principal dataset utilizado pela aplicação com uma pesquisa facetada e um ícone para abertura do AI APEX Assistant, ele utiliza uma query simples sobre o DB para resposta

**3. Arquivos e Normas:** Guia com documentos não estruturados e ícone de chatbot para consulta nos documentos, demonstrando o poder do 23ai em trabalhar com vetores

**4. JSON Source:** Guia com exemplo de CRUD sobre SODA Collections em formato de card