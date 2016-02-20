#Using Bash more effectively

##Overview

- [Wildcards](#wildcards)
- [Brace expansion](#brace-expansion)
- [IO Redirection](#redirect)
- [Pipes](#pipes)

- [Keys](#keys)
- [History](#history)


###<a name="wildcards"></a>Wildcards

- `*` (all) - matches any string
	- matches everything
	- including nothing at all
	- `*jpg`, `*str*`
	- ```ls a*``` will list all the files starting with a
	- ```ls D*s``` -> print the content of each directory that matches the pattern
		- if the -d option is added, then it will print only the names of the directory
	
- `?`
	- matches exactly one character

- `[]`
	- `[acd7_]` matches one of the characters in the list
	- `[^acd7_]` matches every character except `a`, `c`, `d`, `7`, or `_`
	- `[a-z]`, `[0-9] - ranges

###<a name="brace-expansion"></a>Brace expansion

- Generates strings
	- Does not have to match existing filenames
- Syntax: `pre{list, of, strings}post`
	- Exmples:

		```bash
		touch {a, b, c}.txt  		#expansion: touch a.txt b.txt c.txt
		```

		```bash
		mv file.{txt, jpg} dir/   	#expansion: mv file.txt file.jpg dir/
		```

		```bash
		touch {a..c}{1..3}.txt 		#expansion: touch a1.txt a2.txt ... c2.txt c3.txt
		```

- Bash expansion comes before wildcard expansion
	- Example:
		```bash
		mv *{txt, jpg} Documents 	#equivalent to mv *txt *jpg Documents
		```


###<a name="redirect"></a>IO Redirection

- Output redirection
	- Redirecting standard output stream
	- `>`
		- Saves the output of a command to a file
		- ```bash ls > listing.txt``` -> save the output of ls to the file listing.txt
		- Overwrite existing files
	- `>>`
		- Appends the output to the end of file
- Pipes
	- Sends the ouput of a program to the input of another program

- Command substitution
	- Replaces a command with its output
	- Put command between `$()`
		- Example:
		```bash
		echo "Hello, $(whoami)"
		```
	- Note the use of double quotes
	- Older form uses backtricks
		- Example:
		```bash
		echo "you are currenty on `hostname`"
		```
	
###<a name="pipes"></a>Pipes
