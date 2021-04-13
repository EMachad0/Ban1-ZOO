import os
import psycopg2


DATABASE_URL = os.environ["DATABASE_URL"]


def connect():
    try:
        print('Connecting to the PostgreSQL database...')
        con = psycopg2.connect(DATABASE_URL)
        print("Connected")
        return con
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)


def disconnect():
    if conn is not None:
        conn.close()
        print('Database connection closed.')


conn = connect()

if __name__ == "__main__":
    print(conn)
