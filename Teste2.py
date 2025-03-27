import pdfplumber
import csv

PDF_FILE = "downloads/Anexo_I_Rol_2021RN_465.2021_RN627L.2024.pdf"


def extrair_tabelas(pdf_file):
    todas_as_tabelas = []
    with pdfplumber.open(pdf_file) as pdf:
        for page in pdf.pages:
            tabela = page.extract_table(table_settings={
                "vertical_strategy": "lines",
                "horizontal_strategy": "lines",
                "intersection_tolerance": 5
            })
            if tabela:
                todas_as_tabelas.extend(tabela)
    return todas_as_tabelas


def remover_duplicatas(tabelas):
    if not tabelas:
        return []
    primeiro_valor = tabelas[0]
    tabelas_filtradas = [primeiro_valor] + [linha for linha in tabelas[1:] if linha != primeiro_valor]
    return tabelas_filtradas


def salvar_em_csv(dados, nome_arquivo):
    with open(nome_arquivo, "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f, delimiter=';')  # Usando ponto e vírgula como delimitador
        writer.writerows(dados)


if __name__ == "__main__":
    tabelas = extrair_tabelas(PDF_FILE)
    tabelas_filtradas = remover_duplicatas(tabelas)

    for linha in tabelas_filtradas:
        print(linha)

    # Salvando a tabela filtrada no arquivo CSV
    salvar_em_csv(tabelas_filtradas, "tabela_extraida.csv")

    print("Tabela salva com sucesso em 'tabela_extraida.csv'")
