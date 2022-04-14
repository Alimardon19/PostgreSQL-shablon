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


-- Postresql table da malumot bitta malumotni tanlab o'qib olish.

SELECT * from uz_auto where auto_model = 'Nexia';  -- Bitta malumotni tanlab o'qib olish.

DELETE from uz_auto where id = 2;  -- Bitta tanlangan malumotni o'chirib tashlash.

DELETE from uz_auto; -- Table dan hamma malumot o'chirib tanlash.