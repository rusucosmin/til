# [Data Interview Questions](https://www.interviewqs.com/)


## Question 10 - Calculating student attendance using SQL
Given the following table schemas, how would you figure out the overall attendance rate for each grade on 2018-03-12? Answers will be provided in SQL for premium users.

Table 1: student_attendance_log

Column Name	Data Type	Description
date	string	date of log per student_id, format is 'yyyy-mm-dd'
student_id	integer	id of the student
attendance_status	string	Possible values are ['present', 'tardy', 'absent']

Table 2: student_demographic

Column Name	Data Type	Description
student_id	integer	id of the student
grade_level	integer	will be a value between 0-12, which corresponds
date_of_birth	string	Student birth date, format is 'yyyy-mm-dd'


-master ~/til/ds> vim 14.sql

## Question 14 - Popular songs (a SQL question)

Below are two table schemas for a popular music streaming application:

Table 1: user_song_log

Column Name	Data Type	Description
user_id	id	id of the streaming user
timestamp	integer	timestamp of when the user started listening to the song, epoch seconds
song_id	integer	id of the song
artist_id	integer	id of the artist

Table 2: song_info

Column Name	Data Type	Description
song_id	integer	id of the song
artist_id	integer	id of the artist
song_length	integer	length of song in seconds


Question:
Can you write a SQL query to estimate the average number of hours a user spends listening to music daily?

## Question 66 - Matrix frequencies

Given a matrix of order m\*n then the task is to find the frequency of even and odd numbers in matrix.

For example, given the following inputs:
```
m = 2, n = 3
[[ 9, 11, 3 ],
[ 4, 12, 2 ]]
```

Your function should return the following output:
Frequency of odd #: 3
Frequency of even #: 3
