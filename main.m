clear all

%%creating a sudoku
x = zeros(9);
x(1,2) =2;
x(2,1) =6;
x(3,3) =4;
x(1,5) =3;
x(1,8) =4;
x(2,9) =3;
x(3,7) =5;
x(4,4) =8;
x(4,6) =6;
x(5,1) =8;
x(5,5) =1;
x(5,9) =6;
x(6,4) =7;
x(6,6) =5;
x(7,3) =7;
x(7,7) =6;
x(8,1) =4;
x(8,9) =8;
x(9,2) =3;
x(9,5) =4;
x(9,8) =2;

%%calling function sudoku
[X,C] = sudoku(x);