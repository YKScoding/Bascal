
program ex9_5;
var
    n,o,s2,s3 : string;
    p,l,p2,p3 : int64;
begin
    s3 := '';
    writeln('Enter your name: ');
    read(n);
    l := length(n);
    p := pos(' ',n);
    o := copy(n,1,p);
    delete(n,l-1,l);
    p2 := pos(' ',n);
    s2 := copy(n,p2+1,1);
    delete(n,p2-1,p2);
    p3 := pos(' ',n);
    s3 := copy(n,p3+1,1);
    writeln('Your Initials (with surname) are ', s2 , '.' , s3 , '. ', o)
    
    
end.

