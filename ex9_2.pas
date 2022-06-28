
program ex9_2;
var
    i,uid,dnm : string;
    a,l : int64;
begin
    writeln('Enter an e-mail address: ');
    read(i);
        l := length(i);
        a := pos('@',i);
            uid := copy(i,1,(a-1));
            dnm := copy(i,(a+1),(l-a));
    writeln('The User ID is ',uid);
    writeln('The Domain name is ',dnm)
end.

