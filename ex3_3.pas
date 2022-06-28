{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


Program ex3_3;

var
        vala:string;
        valb:string;
        valc:string;
begin
        randomize;
        write('Random Guess, press enter to continue'); 
        readln();
        vala:=chr(random(4)+65);
        valb:=chr(random(4)+65);
        valc:=chr(random(4)+65);
        writeln('MC answer 1 = ',vala);
        writeln('MC answer 2 = ',valb);
        writeln('MC answer 3 = ',valc);
end.
