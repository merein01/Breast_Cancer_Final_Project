import psycopg2

hostname = 'localhost'
database = 'Breast_Cancer_Final_Project'
username = 'postgres'
pwd = 'PASSWORD'
port_id = '5433'
conn = None
cur = None
try:
    conn = psycopg2.connect(
    host = hostname,
    dbname = database,
    user = username,
    password = pwd,
    port = port_id)

    cur = conn.cursor()
    
    conn.commit()
except Exception as error:
    print(error)
finally:
    if cur is not None:
        cur.close()
    if conn is not None:
        conn.close()