--1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
    SELECT `students`.name, `students`.surname, `degrees` .name
    FROM `students`
    INNER JOIN `degrees`
    ON `students` .degree_id = `degrees` .id
    WHERE `degrees`.`name` = "Corso di Laurea in Economia";

--2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
    SELECT `degrees` .*, `departments` .name
    FROM `degrees`
    INNER JOIN `departments`
    ON `degrees` .department_id = `departments` .id
    WHERE `departments` .name = "Dipartimento di Neuroscienze"
    AND`degrees` .level = "magistrale";

--3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
    SELECT `teachers`.`name` AS `teacher_name`, `teachers`.`surname` AS `teacher_surname`, `courses`.* 
    FROM `teachers`
    INNER JOIN `course_teacher`
    ON `teachers` .`id` = `course_teacher`.`teacher_id`
    INNER JOIN `courses`
    ON `courses`.`id` = `course_teacher`.`course_id`
    WHERE (`teachers`.`name` = "Fulvio"
    AND `teachers`.`surname` = "Amato");


--4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome


--5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


--6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


--7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami