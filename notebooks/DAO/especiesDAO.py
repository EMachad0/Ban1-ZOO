from notebooks.BD import conn


def select_all():
    cur = conn.cursor()
    cur.execute(f"SELECT * FROM especies")
    return cur.fetchall()


def insert(especie):
    cur = conn.cursor()
    cur.execute(
        "INSERT INTO especies (codespecie, nomeespecie, expectativaespecie) VALUES (%s, %s, %s) ON CONFLICT (codespecie) DO UPDATE SET nomeespecie = %s, expectativaespecie = %s",
        (especie.codespecie, especie.nomeespecie, especie.expectativaespecie, especie.nomeespecie, especie.expectativaespecie))
    conn.commit()


def update(especie):
    cur = conn.cursor()
    cur.execute(
        "UPDATE especies SET nomeespecie = %s, expectativaespecie = %s WHERE codespecie = %s",
        (especie.nomeespecie, especie.expectativaespecie, especie.codespecie))
    conn.commit()


if __name__ == "__main__":
    for li in select_all():
        print(li)

    from notebooks.model.Especie import Especie

    insert(Especie(None, "Macaco", 50))
