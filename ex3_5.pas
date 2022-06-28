{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}

program ex3_5;
        
var
        f,c:real;
        
begin
        writeln('Celcius to Fahrenheit'); 
        writeln('Enter a temperature in degrees Celsius: '); 
        readln(c);
        f:=c*9/5+32;
        writeln(c:0:2,' degrees celsius is equal to ',f:0:2,' degrees fahrenheit.'); 
end.
