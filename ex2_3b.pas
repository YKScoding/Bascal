{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ex3_b;
var inpnum,hundig,tendig,undig:integer;
begin
  write('Enter a three digit number:');
  readln(inpnum);
  
  hundig:=inpnum div 100;
  tendig:=inpnum-hundig*100;
  tendig:=tendig div 10;
  undig:=inpnum mod 10;

  writeln('The hundredth digit is',hundig:2,'.');
  writeln('The tenth digit is',tendig:2,'.');
  writeln('The unit digit is',undig:2,'.')
end.

