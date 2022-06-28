program ex9_6;
procedure scroll(var si : string);
var
    cc : string;
begin
    cc := copy(si , 1 , 1);
    delete(si , 1 , 1);
    si := si + cc;
end;
var
    i : string;
    c : int64;
begin
    writeln('Input a string to be looped: ');
    read(i);
    i := i + ' ';
    for c := 1 to length(i) do begin
        scroll(i);
        writeln(i)
    end;
end.

