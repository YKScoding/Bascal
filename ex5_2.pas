{i am inevitable}
Program ex5_2;

var 
    asmd,num1,num2: integer;
    out: real;
    outsym: char;
begin
    writeln('1. Addition');
    writeln('2. Subtraction');
    writeln('3. Multiplacation');
    writeln('4. Division');
    writeln('Enter your choice: (1-4)');
    read(asmd);
        if asmd >= 1 
            then if asmd <= 4
                    then begin writeln('Enter two numbers: ');
                            read(num1, num2);
                            case asmd of
                                1 : out := num1 + num2;
                                2 : out := num1 - num2;
                                3 : out := num1 * num2;
                                4 : out := num1 / num2
                            end;
                            case asmd of
                                1 : outsym := '+';
                                2 : outsym := '-';
                                3 : outsym := 'x';
                                4 : outsym := '/'
                            end;
                            if asmd = 4
                                then writeln(num1,' ',outsym,' ',num2,' = ',out:0:3)
                                else writeln(num1,' ',outsym,' ',num2,' = ',out:0:0);
                            end
            else begin writeln('Invalid choice! Bye!');
                end
        else begin writeln('Invalid choice! Bye!');
            end
end.