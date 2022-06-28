program ex6_1;

var
    grade : char;
    c,g,p,f : integer;
begin
    c :=0 ;
    g :=0 ;
    p :=0 ;
    f :=0 ;
    
    writeln('Enter a grade (A to F, input Z to end): ');
    read(grade);
    while grade <> 'Z' do
        begin
            read(grade);
            g := g + 1;
                if (grade = 'A') or (grade = 'B') or (grade = 'C') then
                    c := c + 1;
                if (grade = 'A') or (grade = 'B') or (grade = 'C') or (grade = 'D') or (grade = 'E') then
                    p := p + 1;
                f := g - p;
        end;
    writeln('Number of credit = ' , c ,'(', (c/g*100):0:2 , ' %)');
    writeln('Number of pass = ' , p ,'(', (p/g*100):0:2 , ' %)');
    writeln('Number of fail = ' , f ,'(', (100-(p/g*100)):0:2 , ' %)')
end.
