

program linearSearch;

uses
     SysUtils , Crt;
const
     num = 11; {array size of student...}
type
     examtype = record
                    nam : string[30];
                    mark : 0..100;
                    {del : boolean;}
                end;
var
     student : array[1..num] of examtype;
     pos : int64;

 



procedure delayandclr; {sleep and clear screen}
     begin
          sleep(90); {using Crt library}
          ClrScr      {using SysUtils library}
     end; {end of delay and clr}   






procedure fakeloadingspin3(num : int64); {procedure to make evil fake loading screen}
     var
          nrng , i : int64;
          c : char;
          
     begin
               for nrng := 1 to (num) do 
                    for i := 1 to 4 do begin
                              case i of
                              1 : c := '-';
                              2 : c := '\';
                              3 : c := '|';
                              4 : c := '/';
                              end; {end of case statement}
                         write( c , '  Loading, please wait...');
                         delayandclr;
                    end; {end of for loop}
          end; {end of fakeloadingspin2}





procedure showarray;
var 
     i : int64;
begin
     for i := 1 to num do begin
          with student[i] do
               writeln(nam , ' ':10 - length(nam) , mark)
     end; {of for loop}
end; {of showarray}





procedure inputdata;
var
     examfile : text;
     count : int64;
begin {of procedure}

     assign(examfile , 'exam.txt');
     reset(examfile);
     count := 0;
     while not eof(examfile) do begin
          count := count + 1;
          with student[count] do begin
               readln(examfile , nam);
               readln(examfile , mark)
          end {of with begin}
     end; {of while loop}
     close(examfile); {close file}
     showarray;
end; {end of inputdata}





procedure search(var pos : int64);
var
     target : string;
     found : boolean;
     count : int64;
begin {of procedure}
     writeln;
     write('Enter name of student: ');
     readln(target);
          {initialization}
          found := false;
          count := 0;
          pos := 0;
          {end of initialization}
     repeat
          count := count + 1;
          with student[count] do
               if (nam = target) {compare key with target}
                    then begin
                         pos := count;
                         found := true {found!}
                    end {of if then}

          
          
     until ((found) or (count = num) or (student[count].nam > target)); {can change if need variable array}
     fakeloadingspin3(count);
     writeln('Number of iterations = ' , count);
end; {end of search}





procedure printres(pos : int64);
begin {of procedure}

     if (pos = 0) {0 means not found}
          then writeln('Record not found')
          else with student[pos] do begin
               writeln('Record found!');
               writeln('Student name = ', nam);
               writeln('Exam mark = ', mark)
          end {of with begin}
end; {end of printres}






begin {of main program}
     if (FileExists('exam.txt'))
          then begin 
               inputdata;
               search(pos);
               printres(pos);
               end {of if then }
          else writeln('document not found! Ending program.')

     
end. {end of main program}

