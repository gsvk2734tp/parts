DROP TABLE IF EXISTS parts;

CREATE TABLE parts
(
id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
required TINYINT(1) NOT NULL,
amount INT
);
INSERT INTO parts (name, required, amount) VALUES( '���������', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����������� �����', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������� ������� NVIDIA', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������� ������� NVIDIA', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������� ������� AMD', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������� ������� AMD', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������� ���������� ����������', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������ ����������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����������� �����', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���� SSD', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���� HDD 3.5', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���� HDD 2.5', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���� SSD M.2', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���� �������', TRUE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������� �������� �����', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������� �������� �����', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������ DVD', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������  Blu-Ray', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������� ��� �������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '��������� ��������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������� ����� PCI', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������� ����� USB', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '�������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '�������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������� Wi-FI', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������� ������� ����', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '����-�����', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '������������ �������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( '���������', FALSE, (RAND( ) *10));
INSERT INTO parts (name, required, amount) VALUES( 'microsoft office', FALSE, (RAND( ) *10));

