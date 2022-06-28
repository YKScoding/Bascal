{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ex2_2a;
var feet,inch : integer;
    cm : real;
begin
  write('Enter your height in feet and inches: ');
  readln(feet,inch);
  cm:=(feet*12+inch)*2.54;
  writeln('You are',cm:8:2,'cm tall.')
end.

