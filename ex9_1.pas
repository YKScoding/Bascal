
program ex9_1;
var
    l,c : int64;
    i : string;
    cc1,cc2 : string;
    p : boolean;
begin
    writeln ('Enter a word: ');
    read(i);
    p := true;
    l := length(i);
    c := 1;
    repeat 
        begin
            cc1 := copy(i,l,1);
            cc2 := copy(i,c,1);
            if (cc1=cc2)
                then begin
                    l := l-1;
                    c := c+1;
                end
                else
                    p := false
        end;
    until (p = false) or (c=l);

    if (p = false) then
        writeln('It is not a palindrome!')
    else
        writeln('It is a palindrome!')
end.

