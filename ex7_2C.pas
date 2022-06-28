program LQ2;



procedure DrawBar (n : integer; symbol : char);
var 
    count : integer;
begin
    for count := 1 to n do 
        write(symbol);
    writeln
end;



procedure DrawTriangle (height : integer; symbol : char);
var 
    row : integer;
begin
    for row := 1 to height do 
        DrawBar(row, symbol)
end;



var
    h : int64;
    sym : char;
begin
    write('Enter the height of triangle: ');
        readln(h);
        writeln;
    write('Enter a character for the triangle: ');
        readln(sym);
        writeln;
    DrawTriangle(h,sym)
end.