{i am inevitable}
Program ex5_1;

var 
    fa,fb,fc,findis: integer;
    
begin
    writeln('Enter three integers:');
    readln(fa, fb, fc);
        if fa >= fb
            then findis := fa
            else findis := fb;
        if fc >= findis
            then findis := fc;
    writeln('The greatest number is ',findis)
end.