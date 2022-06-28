{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


Program ex3_4;

var
        cm,inch:real;
        
begin
        write('Inch to cm Calculator, press enter to continue'); 
        readln();
        writeln('Enter a value in inch: ');
        readln(inch);
        cm:=inch*2.54;
        writeln(inch:0:2,' inches is equal to ',cm:0:2,' cm.');
end.
