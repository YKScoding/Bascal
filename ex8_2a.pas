program Triangle_Ex8_2a;



procedure addac(var ac : int16);
begin
    ac := ac + 1
end; {of addac}



procedure OSA(e : int16; c : char; var ac : int16);
begin
    if ((e >= 90) and (ord(c) = 65))
        then begin 
            writeln('You have the Outstanding Student Award.');
            addac(ac)
            end; {of if}
end; {of OSA}



procedure GPA(e : int16; c : char; var ac : int16);
begin
    if ((e >= 70) and (ord(c) <= 66))
        then begin 
            writeln('You have the Good Performance Award.');
            addac(ac)
            end; {of if}
end; {of GPA}



procedure GSA(c : char; s : int16; var ac : int16);
begin
    if ((s >= 10) and (ord(c) <= 66))
        then begin 
            writeln('You have the Good Service Award.');
            addac(ac)
            end; {of if}
end; {of GSA}



var
    e , s , ac : int16;
    c : char;



begin {of main program}
    {Input}
    repeat 
        writeln;
        writeln;
        write('Input your Exam mark(Between 0-100): ');
        read(e)
    until ((e >= 0) and (e <= 100));
    repeat
        writeln;
        writeln;
        readln; {idk why it keeps double entering, have to put this in to stop it...}
        write('Input your Conduct(In Capital Letter): ');
        read(c)
    until ((ord(c) >= 65) and (ord(c) <= 70));
    repeat 
        writeln;
        writeln;
        write('Input your Service activity(Between 0-20): ');
        read(s)
    until ((e >= 0) and (e <= 20));
    {end of input}
    if ord(c) <= 66
        then begin
            writeln;
            OSA(e , c , ac);
            GPA(e , c , ac);
            GSA(c , s , ac);
            if ac = 0
                then writeln('You do not have any awards.')
        end
        else writeln('You do not have any awards.')
end.

