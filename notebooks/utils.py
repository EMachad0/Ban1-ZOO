from notebooks.BD import conn


def column_names(table):
    cur = conn.cursor()
    cur.execute(f"SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table}'")
    return [li[0] for li in cur.fetchall()]
