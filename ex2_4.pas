{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ex2_4;
var CusNum,TableBig,TableSmol,TableSmolA,TableSmolF:integer;

begin
  write('Enter the number of customers:');
  
  readln(CusNum);
  TableBig:=CusNum div 6;
  TableSmol:=CusNum mod 6;
  TableSmolA:=TableSmol div 2;
  TableSmolF:=TableSmol mod 2 + tableSmolA;
  
  writeln('Large tables required:',TableBig:2,'.');
  writeln('Small tables required:',TableSmolF:2,'.')
end.

