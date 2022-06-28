{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


Program ex3_1;

Const
  Pi = 3.14159265359;

Var
  Radius : Real;
  Area,Circ : Real;


Begin
  Writeln('Analysis of circle');
  Writeln;
  Write('Input the radius: ');
  Readln(Radius);

  Area := (Pi * Radius * Radius);
  Circ := (Pi * Radius * 2);

  Writeln;
  Writeln('Area of the Circle is ' ,Area:8:2,'.');
  Writeln;
  Writeln('Circumference of circle is',Circ:8:2,'.');
  Readln;
End.
