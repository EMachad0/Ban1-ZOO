from notebooks.BD import conn


def column_names(table):
    cur = conn.cursor()
    cur.execute(f"SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{table}'")
    return [li[0] for li in cur.fetchall()]


def animais_especie():
    cur = conn.cursor()
    cur.execute(f"SELECT nomeanimal, nomeespecie FROM (animais JOIN especies e ON animais.codespecie = e.codespecie)")
    return cur.fetchall()


def animais_por_especie():
    cur = conn.cursor()
    cur.execute(f"SELECT nomeespecie, count(*) FROM (animais JOIN especies e on e.codespecie = animais.codespecie) GROUP BY e.codespecie, nomeespecie")
    return cur.fetchall()


if __name__ == "__main__":
    for li in animais_especie():
        print(li)

    for li in animais_por_especie():
        print(li)
