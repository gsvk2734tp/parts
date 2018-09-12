DROP TABLE IF EXISTS parts;

CREATE TABLE parts
(
id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
required TINYINT(1) NOT NULL,
amount INT
);
INSERT INTO parts (name, required, amount) VALUES( 'Процессор', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Материнская плата', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Корпус', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Видеокарта игровая NVIDIA', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Видеокарта офисная NVIDIA', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Видеокарта игровая AMD', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Видеокарта офисная AMD', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Система охлаждения процессора', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Жидкое охлаждение', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Оперативная памят', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Диск SSD', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Диск HDD 3.5', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Диск HDD 2.5', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Диск SSD M.2', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Блок питания', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Внутренняя звуковая карта', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Внешняя звуковая карта', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Привод DVD', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Привод  Blu-Ray', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Вентилятор для корпуса', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Термопаста', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Подсветка', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Регулятор оборотов', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Сетевая карта PCI', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Сетевая карта USB', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Салазки', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Контроллер', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Монитор', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Клавиатура', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Мышь', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Аудиосистема', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Адаптер Wi-FI', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'ИБП', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Внешний жесткий диск', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Кард-ридер', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Операционная система', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'Антивирус', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'microsoft office', FALSE, (RAND( ) *10));

