from notebooks.BD import conn


def select_all():
    cur = conn.cursor()
    cur.execute(f"SELECT * FROM animais")
    return cur.fetchall()


def insert(animal):
    cur = conn.cursor()
    cur.execute(
        "INSERT INTO animais (nomeanimal, codespecie, codanimal, codanimalpai, codanimalmae, dtnascanimal) VALUES (%s, %s, default, %s, %s, %s)",
        (animal.nomeanimal, animal.codespecie, animal.codanimalpai, animal.codanimalmae, animal.dtnascanimal))
    conn.commit()


def update(animal):
    cur = conn.cursor()
    cur.execute(
        "UPDATE animais SET nomeanimal = %s, codespecie = %s, codanimalpai = %s, codanimalmae = %s, dtnascanimal = %s WHERE codanimal = %s",
        (animal.nomeanimal, animal.codespecie, animal.codanimalpai, animal.codanimalmae, animal.dtnascanimal, animal.codanimal))
    conn.commit()


def delete(animal):
    cur = conn.cursor()
    cur.execute(
        "DELETE FROM animais WHERE codanimal = %s", [animal.codanimal])
    conn.commit()


if __name__ == "__main__":
    for li in select_all():
        print(li)

    from datetime import datetime
    from notebooks.model.Animal import Animal

    insert(Animal("Mamaco", 1, None, None, None, datetime.now()))
