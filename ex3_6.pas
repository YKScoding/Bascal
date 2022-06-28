{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}

program ex3_6;
        
var
        i:integer;
        issq:boolean;
        
begin
        writeln('Enter an integer: '); 
        readln(i);
        if 
                sqrt(i) = Trunc(sqrt(i))
            then
                issq:=true
            else
                issq:=false;
        writeln('Is ',i,' a perfect square?');
        writeln(issq);
end.
