{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


Program ex3_2;

var
        s: string;
        asciival: array [1..255] of byte;
        i: integer;
        c: integer;
        v: string;
begin;
        write('Enter a string: '); readln(s);
        for i:=1 to length(s) do
                asciival[i]:=ord(s[i]);
        write('Enter an integer: '); readln(c);
        writeln(c,' characters after ',s,' is: ');
        for i:=1 to length(s) do
                writeln(chr(asciival[i]+c));
end.
