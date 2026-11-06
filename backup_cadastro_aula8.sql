USE cadastro;

CREATE TABLE cursos (
    idcurso INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT 2026,
    PRIMARY KEY (idcurso)
);

CREATE TABLE gafanhotos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    profissao VARCHAR(30),
    nascimento DATE,
    sexo ENUM('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(30) DEFAULT 'Brasil',
    PRIMARY KEY (id)
);

INSERT INTO cursos
(nome, descricao, carga, totaulas, ano)
VALUES
('HTML5', 'Curso de HTML5', 40, 37, 2014),
('Algoritmos', 'Logica de programacao', 20, 15, 2014),
('Photoshop', 'Curso de Photoshop', 10, 8, 2014);

INSERT INTO gafanhotos
(nome, profissao, nascimento, sexo, peso, altura)
VALUES
('Diego', 'Estudante', '2008-05-10', 'M', 65.00, 1.70),
('Maria', 'Professora', '1995-08-20', 'F', 60.00, 1.65),
('Joao', 'Programador', '1998-03-15', 'M', 75.00, 1.80);

SELECT * FROM cursos;

SELECT * FROM gafanhotos;