{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ex3_a;
var inpnum,tendig,undig:integer;
begin
  write('Enter a two digit number:');
  readln(inpnum);
  
  tendig:=inpnum div 10;
  undig:=inpnum mod 10;

  writeln('The tenth digit is',tendig:2,'.');
  writeln('The unit digit is',undig:2,'.')
end.

