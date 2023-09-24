import sqlite3
from contextlib import contextmanager
from sqlite3 import Error, DatabaseError


@contextmanager
def create_connection():
    try:
        conn = sqlite3.connect("hw.db")
        yield conn
        conn.close()
    except Error as err:
        print(err)


if __name__ == "__main__":
    sql = """
    SELECT s.fullname, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN groups gr ON s.group_id = gr.id
JOIN disciplines d ON g.discipline_id = d.id
WHERE gr.id = 1 AND d.id = 1
AND g.date_of = (SELECT MAX(date_of) FROM grades WHERE discipline_id = d.id);"""

    with create_connection() as conn:
        if conn is not None:
            cur = conn.cursor()
            try:
                cur.execute(sql)
                print(cur.fetchall())
                conn.commit()
            except DatabaseError as err:
                conn.rollback()
            finally:
                conn.close()
        else:
            print("Error: can't create the database connection")
