{

Online Pascal Compiler.Code, Compile,
    Run and Debug Pascal program online.Write your code in this editor and
    press "Run" button to execute it.}


program ex2_1;
var num1 : integer;
    num2 : integer;
begin
  write('Enter an integer: ');
  readln(num1);
  write('Enter another integer: ');
  readln(num2);
  
  writeln;
  writeln(num1,' + ',num2,' = ',num1+num2);
  writeln(num1,' - ',num2,' = ',num1-num2);
  writeln(num1,' x ',num2,' = ',num1*num2);
  writeln(num1,' / ',num2,' = ',num1 mod num2);
  writeln(num1,' mod ',num2,' = ',num1 div num2)
end.