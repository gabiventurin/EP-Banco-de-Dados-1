import re
import shutil
import subprocess
import os
import pprint

def parse_create_tables(text):
    tables = {}
    current_table = None
    current_column = None
    column_comments = []

    # Divide o texto por linhas
    lines = text.split('\n')
    
    for line in lines:
        # Identifica o nome da tabela ao encontrar um CREATE TABLE
        match_create_table = re.match(r'create table (\w+)', line, re.IGNORECASE)
        
        if match_create_table:
            # Se for encontrado o CREATE TABLE, inicia uma nova tabela
            current_table = match_create_table.group(1).upper()
            column_comments = {}  # Reseta a lista de comentários para a nova tabela
            continue
        
        # Identifica os comentários após -- e a variável
        if '--' in line:
            # Extraímos o nome da coluna e o comentário
            parts = line.split('--')
            column_name = parts[0].strip().split()[0]  # Extrai o nome da variável (primeira palavra da linha)
            comments = parts[1].strip().split(',')  # Divide o comentário em partes por vírgula
            column_comments[column_name] = comments
        
        # Se encontramos o final do CREATE TABLE (pelo ";"), processe a tabela
        if line.strip().endswith(';') and current_table:
            if column_comments:
                tables[current_table] = {}
                for column_name, comments in column_comments.items():
                    # Adiciona as colunas com seus respectivos comentários à tabela
                    tables[current_table][column_name] = comments
            column_comments = {}  # Reseta os comentários para o próximo CREATE TABLE
            current_table = None  # Finaliza a tabela atual
        
    return tables



def run_sqlines(input_file, output_file, out_dir='output'):
    """Executa SQLines para converter um arquivo SQL de MySQL para PostgreSQL."""
    if not (os.path.exists(input_file)):
        print("Caminho do arquivo não existe!")
        exit(1)

    if os.path.exists(out_dir):
        shutil.rmtree(out_dir)

    os.makedirs(out_dir, exist_ok=True)

    input_file_name = os.path.basename(input_file)
    input_file_copy = os.path.join(out_dir, input_file_name)

    try:        
        shutil.copy(input_file, input_file_copy)
        print(f"Arquivo copiado para: {input_file_copy}")
    except shutil.Error as e:
        print(f"Erro ao copiar o arquivo: {e}")
        exit(1)

    try:
        sqlines_path = os.path.join(os.getcwd(), 'sqlines-3.3.137', 'sqlines.exe')  # Caminho para o SQLines
        os.chdir(out_dir) 
        command = [
            sqlines_path,
            '-s=mysql',
            '-t=postgresql',
            f'-in={input_file}',
            f'-out={output_file}'
        ]
        subprocess.run(command, check=True)
        print(f"Conversão realizada com sucesso: {input_file} -> {output_file}")
    except FileNotFoundError:
        print("Erro: SQLines não encontrado no diretório especificado.")
    except subprocess.CalledProcessError as e:
        print(f"Erro durante a execução do SQLines: {e}")

def process_line(line):
    regex = r"\(\s*[^,]+,\s*"
    line = re.sub(regex, '(', line)
    return line

def process_file(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as infile, open(output_file, 'w', encoding='utf-8') as outfile:
        for line in infile:
            processed_line = process_line(line)
            outfile.write(processed_line)

def main():

    input_file = 'code.sql'  # Arquivo MySQL original
    converted_file = 'converted.sql'  # Arquivo convertido para PostgreSQL
    processed_file = 'processed.sql'  # Arquivo final com modificações

    arquivo_com_tabelas = "TEMPDATA.sql"
    print(f"Processando arquivo: {arquivo_com_tabelas}")

    data = None
    with open('' + arquivo_com_tabelas, 'r', encoding='utf-8') as f:
        data = f.read()

    #print(data)
    #result = parse_create_tables(data)
    #pprint.pprint(result)

    # Executa SQLines para converter o arquivo
    run_sqlines(input_file, converted_file)

    # Processa o arquivo convertido para modificar INSERT INTO
    process_file(converted_file, processed_file)
    print(f"Arquivo processado com sucesso: {processed_file}")

if __name__ == "__main__":
    main()