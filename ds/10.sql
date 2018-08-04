DROP TABLE IF EXISTS student_demographic;
DROP TABLE IF EXISTS student_attendance_log;

CREATE TABLE IF NOT EXISTS student_demographic(
  student_id INTEGER PRIMARY KEY,
  grade_level INTEGER,
  date_of_birth VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS student_attendance_log(
  date VARCHAR(100),
  student_id INTEGER REFERENCES student_demographic(student_id),
  attendance_status VARCHAR(100)
);

INSERT INTO student_demographic VALUES(
  1,
  10,
  '1996-07-16'
);

INSERT INTO student_demographic VALUES(
  2,
  10,
  '1995-07-16'
);

INSERT INTO student_demographic VALUES(
  3,
  11,
  '1995-07-16'
);

INSERT INTO student_demographic VALUES(
  4,
  10,
  '1995-07-16'
);

INSERT INTO student_demographic VALUES(
  5,
  11,
  '1995-07-16'
);

INSERT INTO student_attendance_log VALUES(
  '2018-03-12',
  1,
  'present'
);

INSERT INTO student_attendance_log VALUES(
  '2018-03-12',
  2,
  'absent'
);

INSERT INTO student_attendance_log VALUES(
  '2018-03-12',
  3,
  'tardy'
);

INSERT INTO student_attendance_log VALUES(
  '2018-03-12',
  4,
  'tardy'
);

INSERT INTO student_attendance_log VALUES(
  '2018-03-12',
  5,
  'present'
);

SELECT t1.grade_level,
    t1.total_students,
    t2.total_present,
    t2.total_present * 1.0 / t1.total_students as presence_ratio
FROM
(SELECT student_demographic.grade_level, COUNT(student_demographic.student_id) as total_students FROM student_demographic
    INNER JOIN student_attendance_log ON
      student_demographic.student_id =
        student_attendance_log.student_id
    WHERE student_attendance_log.date = '2018-03-12'
    GROUP BY student_demographic.grade_level) t1
INNER JOIN
(SELECT student_demographic.grade_level, COUNT(student_demographic.student_id) as total_present FROM student_demographic
    INNER JOIN student_attendance_log ON
        student_demographic.student_id =
            student_attendance_log.student_id
    WHERE student_attendance_log.date = '2018-03-12'
        AND student_attendance_log.attendance_status = 'present'
    GROUP BY student_demographic.grade_level) t2
ON t1.grade_level = t2.grade_level;
