import os
import requests
import zipfile
from bs4 import BeautifulSoup

BASE_URL = "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos"
DOWNLOAD_DIR = "downloads"
ZIP_FILE = "anexos.zip"


def baixar_arquivo(url, pasta):
    response = requests.get(url, stream=True)
    if response.status_code == 200:
        nome_arquivo = url.split("/")[-1]
        caminho_arquivo = os.path.join(pasta, nome_arquivo)
        with open(caminho_arquivo, "wb") as arquivo:
            for chunk in response.iter_content(4096):
                arquivo.write(chunk)
        print(f"Download concluído: {nome_arquivo}")


def compactar_arquivos(pasta, zip_nome):
    with zipfile.ZipFile(zip_nome, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for raiz, _, arquivos in os.walk(pasta):
            for arquivo in arquivos:
                caminho_completo = os.path.join(raiz, arquivo)
                zipf.write(caminho_completo, arquivo)
    print(f"Compactação concluída: {zip_nome}")


def main():
    os.makedirs(DOWNLOAD_DIR, exist_ok=True)

    resposta = requests.get(BASE_URL)
    soup = BeautifulSoup(resposta.text, "html.parser")
    links = soup.find_all("a", href=True)

    for link in links:
        href = link["href"]
        if href.endswith(".pdf") and ("Anexo" in href or "anexo" in href):
            url_completa = href if href.startswith("http") else BASE_URL + href
            print(f"Baixando: {url_completa}")
            baixar_arquivo(url_completa, DOWNLOAD_DIR)

    compactar_arquivos(DOWNLOAD_DIR, ZIP_FILE)


if __name__ == "__main__":
    main()
