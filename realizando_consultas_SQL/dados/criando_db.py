import pandas as pd
import sqlite3
import os

# Nomes dos arquivos CSV
csv_file1 = 'C:/Users/leona_xuct80p/Desktop/Estudos/Alura/Formação Conhecendo SQL/realizando_consultas_SQL/dados/itens_pedidos.csv'
csv_file2 = 'C:/Users/leona_xuct80p/Desktop/Estudos/Alura/Formação Conhecendo SQL/realizando_consultas_SQL/dados/pedidos.csv'

# Nome do arquivo SQLite
db_file = 'C:/Users/leona_xuct80p/Desktop/Estudos/Alura/Formação Conhecendo SQL/realizando_consultas_SQL/dados/serenatto.db'

# Verifique se os arquivos CSV existem
if not os.path.exists(csv_file1):
    print(f"Arquivo não encontrado: {csv_file1}")
elif not os.path.exists(csv_file2):
    print(f"Arquivo não encontrado: {csv_file2}")
else:
    # Conecte-se ao banco de dados (será criado se não existir)
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()

    # Leia os arquivos CSV
    df1 = pd.read_csv(csv_file1)
    df2 = pd.read_csv(csv_file2)

    # Importe os dados para tabelas SQLite
    df1.to_sql('itenspedidos', conn, if_exists='replace', index=False)
    df2.to_sql('pedidos', conn, if_exists='replace', index=False)

    # Feche a conexão
    conn.close()

    print(f"Dados importados com sucesso para {db_file}")
