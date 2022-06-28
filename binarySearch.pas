

program binarySearchV1;

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
     bin : boolean;
 




procedure showarray;
var 
     i : int64;
begin
     for i := 1 to num do begin
          with student[i] do
               writeln(i ,' ' , nam , ' ':10 - length(nam) , mark)
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






procedure seqsrc(var pos : int64); {this does not have auto stop past data, since data is unsorted}
var
     targetq : string;
     foundq : boolean;
     countq : int64;
begin {of procedure}
     writeln;
     write('Enter name of student: ');
     readln(targetq);
          {initialization}
          foundq := false;
          countq := 1;
          {end of initialization}
     while not((foundq) or (countq = num)) do begin
          writeln(student[countq].nam);
          countq := countq + 1;
               if (student[countq].nam = targetq) {compare key with target}
                    then foundq := true; {found!}
               if foundq = true 
                    then pos := countq;
     end; {of while loop}
     
     writeln('Number of iterations = ' , countq);
end; {end of search}





procedure binarysrc(var pos : int64);
var
     target : string;
     found : boolean;
     count , bin , size : int64;
begin {of procedure}
     writeln;
     write('Enter name of student: ');
     readln(target);
          {initialization}
          found := false;
          count := 0;
          bin := (num div 2 + 1);
          size := bin;
          {end of initialization}
     while not((found) or (count > (num div 2))) do begin
                         writeln('comparing data ' , bin); {debug flag}
                    count := count + 1;
                    size := ((size div 2) - (size mod 2));
                    if ((size = 0) or (count > num div 4)) then size := 1;
          
          with student[bin] do begin
               if (nam = target) {compare key with target}
                    then begin
                         found := true; {found!}
                         pos := bin;
               end;
               if (nam > target) or (bin > num) then 
                    bin := bin - size;
               if (nam < target) and not(bin > num) then 
                    bin := bin + size;
                    
          end; {of with}
     end; {of while}
     
     writeln('Number of iterations = ' , count);
end; {end of binarysrc}





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





procedure checkorder(var bin : boolean);
var
     i : int64;
     namc , cachec : string; {bin is the boolean variable for checking if the file is in order.}
begin {of checkorder}
     cachec := 'A';
     i := 0;
     while ((bin = true) and (not(i = num))) do begin
               i := i + 1;
               namc := student[i].nam;
                    if (namc < cachec)
                    then bin := false;
               cachec := student[i].nam;

     end; {of while loop}

end; {of checkorder}





begin {of main program}
     randomize;
     bin := true; {initialization}
     if (FileExists('exam.txt'))
          then begin 
               inputdata;
               checkorder(bin);
                         if bin = true then
                              binarysrc(pos)
                         else begin
                                   writeln('Data is not in order, press enter to continue search with linear search.');
                                   readln;
                                   seqsrc(pos);
                              end; {of if then}
               printres(pos);
               end {of if then}
          else writeln('document not found! Ending program.')

     
end. {end of main program}

