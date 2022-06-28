program ex7_1 ;

procedure checkprime(N : integer ; var primet : boolean);
var {local variable}
    int : integer;
begin
    int := 2;
    primet := true;
    while ((primet = true) and not(int = N)) do begin
        if (N mod int = 0)
            then primet := false
            else int := int + 1
            end; {End of while loop}
    end; {End of checkprime}

var
    primet : boolean;
    i : integer;
begin
    writeln('Auto-inputting numbers... please wait');
    for i := 1 to 100 do begin
        checkprime(i,primet);
         if (primet = true)
           then write(i , ' ')
             end; {End of for loop}
    writeln;
    writeln('Program ended.')
end. {End of Program}
