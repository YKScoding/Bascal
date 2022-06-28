{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ex2_2b;
var feet,inches,cm : integer;
begin
  write('Enter your height in cm: ');
  readln(cm);
  inches:= round(cm/2.54);
  feet:= inches div 12;
  inches:= inches mod 12;
  writeln('You are',feet:8,'feet',inches:8,'inch(es) tall.')
end.

