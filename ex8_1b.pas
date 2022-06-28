program Triangle_Ex8_1b;



function eq(f : real ; s : real) : boolean;
    {test if equal, output boolean.}
begin
    if (f = s)
        then eq := true
        else eq := false
end; {of function}



procedure tadd(var t : int16);
begin
    t := t + 1
end;



procedure tcalc(a : real ; b : real ; c : real; var t : int16);
begin
        if eq(a , b)                 {0=sca, 1=isos, 3=equil}
            then tadd(t);
        if eq(b , c)
            then tadd(t);
        if eq(a , c)
            then tadd(t)
end;



var
    a , b , c : real;
    t : int16;
begin
  writeln ('Enter the lengths of a triangle(a, b, c): '); 
    readln(a , b , c);
    t := 0;
        tcalc(a , b , c , t);
            {verify if it is a valid triangle}
        if ((a + b) < c) or ((b + c) < a) or ((a + c) < b)
        then writeln('This is not a valid triangle.')
        else
            case t of
                0 : writeln('This is a Scalene Triangle.');
                1 : writeln('This is an Isosceles Triangle.');
                3 : writeln('This is an Equilateral Triangle.');
            end; {of case}
end.

