-- Postgresql da table yaratib unga malumot qo'shish.

CREATE TABLE students(
    student_id serial,
    student_name varchar(50) not null,
    student_password varchar(200) not null
);


-- Postgresql table ga yangi malumot qo'shish.

INSERT INTO students(student_name, student_password) VALUES('Alisher', '1234') RETURNING *; -- Qo'shilgan malumotni ko'rsatish
INSERT INTO students(student_name, student_password) VALUES('Bilol', 'user123');


-- Postgresql table da malumotlarni o'qib olish.

SELECT student_name from students; -- Table dan malumot ni tanlab olish. 
SELECT * from students; -- Table dan hamma malumotni olish.