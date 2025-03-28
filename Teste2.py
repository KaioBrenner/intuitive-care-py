import pdfplumber
import csv
import zipfile

PDF_FILE = "downloads/Anexo_I_Rol_2021RN_465.2021_RN627L.2024.pdf"
CSV_FILE = "tabela_extraida.csv"
ZIP_FILE = "Teste_KaioBrenner.zip"

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
    with open(nome_arquivo, "w", newline="", encoding="utf-8-sig") as f:
        writer = csv.writer(f, delimiter=';')  # Usando ponto e vírgula como delimitador
        writer.writerows(dados)

def substituir_od_amb(dados):
    for linha in dados:
        for i in range(min(4, len(linha))):
            if linha[i] == 'OD':
                linha[i] = 'Seg. Odontológica'
        for i in range(min(5, len(linha))):
            if linha[i] == "AMB":
                linha[i] = "Seg. Ambulatorial"
    return dados

def compactar_arquivo(nome_arquivo, nome_zip):
    with zipfile.ZipFile(nome_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
        zipf.write(nome_arquivo)

if __name__ == "__main__":
    tabelas = extrair_tabelas(PDF_FILE)
    tabelas_filtradas = remover_duplicatas(tabelas)
    tabelas_modificadas = substituir_od_amb(tabelas_filtradas)

    # Salvando a tabela filtrada no arquivo CSV
    salvar_em_csv(tabelas_modificadas, CSV_FILE)
    print(f"Tabela salva com sucesso em '{CSV_FILE}'")

    # Compactando o arquivo CSV
    compactar_arquivo(CSV_FILE, ZIP_FILE)
    print(f"Arquivo compactado com sucesso em '{ZIP_FILE}'")
