#Grep

Some notes from the following tutorial:
(http://www.uccs.edu/~ahitchco/grep/)

###Usage
- Grep searches a text in every line of a file

- Example:
    `grep "boo" a_file.txt`

###Useful Options
- `-n` parameter: also prints the file where a match is encountered
- `-v` prints the negative result
- `-c` prints the number of lines where we have a match
- `-l` prints only the filenames of files in the query that have lines that match the search string
- `-i` ignore case
- `-x` matches the line that ONLY contains the pattern
- `-f` allows you to specify a file containt the search string
- grep is the only command of the three that supports backreferences and saving. The following uses backreferences to find lines that contain two of the same lowercase letter in succession.

    `grep "\([a-z]\)\1" a_file`
