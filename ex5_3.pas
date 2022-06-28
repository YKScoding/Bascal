{i am inevitable}
Program ex5_3;

var 
    a,b,c:integer;
    d,out,outrt:real;
begin
    writeln('Solving Quadratic Equation');
    writeln;
    writeln('Enter the coefficients (A, B, C): ');
    read(a,b,c);
    if a >= 1
        then begin d := sqr(b)-(4*a*c);
                    if d<0
                        then writeln('No real roots.')
                        else if d=0
                                then begin out := (-b+sqrt(d))/(2*a);
                                           writeln('Double roots. x = ',out:0:2)
                                     end
                                else begin 
                                        out := (-b+sqrt(d))/(2*a);
                                        outrt := (-b-sqrt(d))/(2*a);
                                        writeln('Two real roots. x = ',out:0:2,' , ',outrt:0:2)
                                     end
             end
        else writeln('This is not a quadratic equation.')
end.