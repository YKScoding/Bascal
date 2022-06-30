

program binarySearchV2;

uses
     SysUtils , Crt ;
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
     LS : char;




procedure showarray;
var 
     i : int64;
begin
     for i := 1 to num do begin
          with student[i] do
               writeln(i:3 ,'  ' , nam , ' ':10 - length(nam) , mark)
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
     tcone : char;
begin {of procedure}
     writeln;
     repeat
          write('Enter name of student in capital letters: ');
          readln(targetq);
          tcone := targetq[1];
          if ord(tcone) > 90 
               then writeln('Please enter in capital letters.');
     until ord(tcone) <= 90;
          {initialization}
          foundq := false;
          countq := 1;
          {end of initialization}
     while not((foundq) or (countq = num)) do begin
          {writeln(student[countq].nam);} {debug flag}
          countq := countq + 1;
               if (student[countq].nam = targetq) {compare key with target}
                    then foundq := true; {found!}
               if foundq = true 
                    then pos := countq;
     end; {of while loop}
     
     writeln('Number of iterations = ' , countq);
end; {end of search}





procedure binarysrcv2(var pos : int64);
var
     target : string;
     tcone : char;
     found : boolean;
     count , top , bottom , bin : int64;
begin {of procedure}
     writeln;
     repeat
          write('Enter name of student in capital letters: ');
          readln(target);
          tcone := target[1];
          if ord(tcone) > 90 
               then writeln('Please enter in capital letters.');
     until ord(tcone) <= 90;
     
          {initialization}
          found := false;
          count := 0;
          top := num;
          bottom := 1;
          {end of initialization}
          
          while (found = false) and not(bottom > top) do begin
               count := count + 1;
               bin := (top + bottom) div 2;
                    {writeln(top:3 , bin:2 , bottom:2);} {debug flag}
               with student[bin] do begin
                    if target = nam then begin found := true;
                                               pos := bin end;{of if then}
                    if target > nam then bottom := bin + 1;
                    if target < nam then top := bin - 1;
               end; {of with}
               
          end; {of while}
          
     writeln('Number of iterations = ' , count); {debug}
end; {end of binarysrc}





procedure printres(pos : int64);
begin {of procedure}

     if (pos = 0) {0 means not found}
          then writeln('Record not found')
          else with student[pos] do begin
               writeln;
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





procedure swap(i : int64; iB : int64);
var
     buffer : string;
begin
               {temporary fix, will probably end up permanant...}
                    if not(iB = 12) then begin
               
               
               
          buffer := student[iB].nam;
          student[iB].nam := student[i].nam;
          student[i].nam := buffer;
                    end;{of temporary if}
end; {of swap}



procedure sort; {sort for ascending}
var 
     i , n : int64;
begin
     for n := 1 to num do 
          for i := 1 to (num + 1) do begin
                    if student[i].nam > student[i + 1].nam
                         then begin
                              swap(i,i + 1);
                              {writeln(i)} {debug flag}
                         end;{of if then}
          end; {of for loop}
     writeln;
     writeln('Sorted!');
     showarray;
     binarysrcv2(pos);
end; {of sort}






begin {of main program}
     bin := true; {initialization}
     
     if (FileExists('exam.txt'))
          then begin 
               inputdata;
               checkorder(bin);
                         if bin = true then
                              binarysrcv2(pos)
                         else begin
                                   writeln;
                                   writeln('Data is not in ascending order,');
                                   writeln('Enter L to continue search with linear search.');
                                   writeln('Enter S to sort the unsorted file and search with binary search.');
                                   readln(LS);
                                   case LS of
                                        'S' : sort;
                                        'L' : seqsrc(pos);
                                   else writeln('invalid input, ending program...');
                                   end;{of case}
                              end; {of if then}
               printres(pos);
               end {of if then}
          else writeln('document not found! Ending program.')

     
end. {end of main program}
