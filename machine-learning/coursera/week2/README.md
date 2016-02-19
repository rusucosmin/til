#Week2

- Include the first assignment
- Octave tutorial


##Octave tutorial

###Basics

- `%` -> the beginning of the comment block (like `#` in Python or `//` in C++)
- `size var`
- `help function` -> is exactly what is `man` for bash


### Moving Data around

- `load file` -> load the data stored in file
- `who` -> print all the variables I have so far
- `whos` -> print all the variables in a detailed format
- `clear` -> clear all the variables
- `clear var` -> clear only the variable `var`
- `A(x, y)` -> print the element from element at the row x and column y in the matrix `A 
- `A(x, :)` -> print all the elements from the row `x` in the matrix `A`
- `A(:, x)` -> print all the elements fromt the column `x` in the matrix `A`
- `A([1 3],:)` -> print all the elements from the rows `1` and `3` in the matrix `A`
- `A = [A, [100; 101; 102]]` -> appends the column-vector `[100; 101; 102]` to the matrix `A
- 'A(:)` -> concatenate all the columns of `A`
- `C = [A B]` -> `C` is the column-concatenation of the matrices `A` and `B`
- `C = [A : B]` -> `C` is the row-concatenation of the matrices `A` and `B`

### Computing on Data

- `A * B` -> multiply the matrix `A` with the matrix `B`
- `A .* B` -> multiply each element from the matrix `A` with the corresponding element from matrix `B`
- `A .^ w` -> each element from `A` is replaced by the square of that element
- ` . ` -> the `dot` character in Octave gives us a clue that we will do the operation on elements directly
- `A'` -> computes the transpose of the matrix A
- `magic(n)` -> get a `n x n` magic matrix (all the elements are distinct ranging between `1` and `n^2` and all the lines and columns have the same sum
- `max(A, [], 1)` -> returns a column vector with the elements being the maximum among all the columns
- `max(a, [], 2)1 -> returns a line vector with the elements being the maximum among all the lines
- `pinv (A)` -> returns the pseudo-inverse of the matrix `A`

### Plotting Data

- `plot (t, y1)` -> plots on t the x - axis and the valyes y1 on the y-axis
- `hold on` -> keeps alive all the plots so far, so we can add new one
- `xlabel label1` -> labels the x-axis with label1
- `ylabel label2` -> labels the y-axis with label2
- `legend ('list', 'of', 'names')` -> add a legend to the figure
- `title 'New title'`-> put New title to the figure
- `print -dpng 'myPlot.png'` -> save plot to a file called `myPlot.png` in `png` format
- `close` -> close the curent plot
- `figure(1); plot(t, y1)` -> plot `t, y1` on figure `1`
- `subplot(1, 2, 1)` -> divides the current plot into `1 x 2` subplots and acces the first one 
- `axis[minX, maxX, minY, maxY]` -> sets the x-axis interval to `[minX, maxX]` and `[minY, maxY]`
- `clf` -> clears a figure

###Control statements: for, while, if statement and functions

- `for` loops example:
	
```bash
v = zeros(10, 1)
for i = 1:10,
	v(i) = 2^i;
end;
```

```bash
indices = 1:10;
for i=indices,
	disp(i);
end;
```

- `while` loops example

```bash
i = 1;
while i <= 5,
	v(i) = 100;
	i = i + 1;
end;
```

- Simple Octave function

```
%Octave function to get the square of a number
function y = squareThisNumber(x)

y = x ^ 2;
```
