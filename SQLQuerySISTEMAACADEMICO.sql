INSERT INTO ALUMNOS VALUES(2019176502, 'Cielo Fuentes', 76010662, 'Desarrollo de Aplicaciones', 'V', '76010662@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2019226811, 'Guillermo Manrique', 74150107, 'Realidad Nacional', 'VI', '74150107@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2021470203, 'Valeria Portillo', 7049335, 'Desarrollo de Aplicaciones', 'IV', '7049335@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2020611792, 'Heber Juarez', 7221336, 'Sistemas de Informacion Administrativa', 'III', '7221336@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2013800125, 'Matias Teran', 6502048, 'Matematica', 'I','6502048@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2019215632, 'Mary Calle', 72812452, 'Matematica', 'X', '72812452@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2019221401, 'Marco Vazques', 73959248, 'Fisica', 'IX', '73959248@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2015733610, 'Fabian Contreras', 75038870, 'Realidad Nacional', 'V','75038870@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2018197024, 'Rosa Gomez', 69550109, 'Matematica', 'II', '69550109@ucsm.edu.pe');
INSERT INTO ALUMNOS VALUES(2017880711, 'Brenda Gonzales', 58823602, 'Fisica', 'I', '58823602@ucsm.edu.pe');

INSERT INTO DOCENTES VALUES(2010308199, 'Mario Linares', 29651480, 'Desarrollo de Aplicaciones', '29651480@ucsm.edu.pe');
INSERT INTO DOCENTES VALUES(2001366250, 'Angie Oviedo', 29651209, 'Fisica', '29651209@ucsm.edu.pe');
INSERT INTO DOCENTES VALUES(2008470016, 'Ernesto Cuentas', 40924889, 'Matematica', '40924889@ucsm.edu.pe');
INSERT INTO DOCENTES VALUES(2010728103, 'Carlos Zegarra', 29622380, 'Realidad Nacional', '29622380@ucsm.edu.pe');
INSERT INTO DOCENTES VALUES(2012306002, 'Ulises Fernandez', 25682609, 'Sistemas de Informacion Administrativa', '25682609@ucsm.edu.pe');

INSERT INTO CURSOS VALUES(015487, 'Desarrollo de Aplicaciones', 'Mario Linares');
INSERT INTO CURSOS VALUES(015487, 'Fisica', 'Angie Oviedo');
INSERT INTO CURSOS VALUES(015487, 'Matematica', 'Ernesto Cuentas');
INSERT INTO CURSOS VALUES(015487, 'Realidad Nacional', 'Carlos Zegarra');
INSERT INTO CURSOS VALUES(015487, 'Sistemas de Informacion Administrativa', 'Ulises Fernandez');

INSERT INTO HORARIOS VALUES(015487, 'Lunes', '09:00', 'Mario Linares');
INSERT INTO HORARIOS VALUES(015487, 'Martes', '11:00', 'Ernesto Cuentas');
INSERT INTO HORARIOS VALUES(015487, 'Miercoles', '20:00', 'Carlos Zegarra');
INSERT INTO HORARIOS VALUES(015487, 'Jueves', '16:00', 'Ulises Fernandez');
INSERT INTO HORARIOS VALUES(015487, 'Viernes', '21:00', 'Angie Oviedo');

SELECT * FROM ALUMNOS;
SELECT * FROM DOCENTES;
SELECT * FROM CURSOS;
SELECT * FROM HORARIOS;