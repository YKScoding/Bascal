program ex10_1;
uses
    Crt , SysUtils;

var {global variables}
     
     count : array ['A'..'F'] of integer;
     mark : array [1..10] of integer;
     
     
     

     procedure inpmak; {procedure for inputing marks}
     var
          mk : int64; {local variable, number of marks}
          inrng : boolean; {check whether number inputted is in range or not}
          
          begin     {input mark program}
               inrng := true; {initialize the boolean var}
                    for mk := 1 to 10 do begin
                         repeat
                              writeln('Input marks ' , mk , ' of 10.');
                              readln(mark[mk]);
                              if (mark[mk] < 0) or (mark[mk] >100)
                                   then begin 
                                        inrng := false;
                                        writeln('Value inputted is not valid, please input again.')
                                        end {end of then statement}
                                   else inrng := true
                         until inrng = true
                    end; {end of for loop}
     end;{end of inpmak}
     
     procedure countgrade; {procedure for counting grades}
     var
          ch : char; {local variable, for array count}
          i : int64; {local variable, for array mark}
          
          begin
               for ch:= 'A' to 'F' do {initialize the count array}
                    count[ch] := 0; {end of for loop for intializing}
               for i := 1 to 10 do 
                    case mark [i] of
                         91..100 : count ['A'] := count['A'] + 1;
                         81..90 : count ['B'] := count['B'] + 1;
                         71..80 : count ['C'] := count['C'] + 1;
                         61..70 : count ['D'] := count['D'] + 1;
                         51..60 : count ['E'] := count['E'] + 1;
                         0..50 : count ['F'] := count['F'] + 1;
                         else writeln('error: number entered is invalid, please restart the program');
                    end;{end of case} 
               {end of for loop}
          end;{end of countgrade}
     
     procedure plotchart; {procedure for ploting the chart}
     var
          ch : char; {local variable, for array count}
          i : int64; {local variable, for array mark}
          
          begin
               for ch := 'F' downto 'A' do begin
                    writeln;
                    write(ch , ':');
                    for i := 1 to count[ch] do begin {nested for loop}
                        write('*');
                    end; {end of for i loop}
                    write('(' , count[ch] , ')') {display number of stars}
			end; {end of for ch loop}
          end; {end of plotchart}
     
     procedure delayandclr; {sleep and clear screen}
          begin
               sleep(100); {using Crt library}
               ClrScr      {using SysUtils library}
          end; {end of delay and clr}

     procedure fakeloadingspin; {procedure to make evil fake loading screen}
     var
          rng : int64;
          begin
               for rng := 1 to random(40) do begin
                    write('  -  Loading, please wait.');
                         delayandclr;
                    write('  \  Loading, please wait.');
                         delayandclr;
                    write('  |  Loading, please wait.');
                         delayandclr;
                    write('  /  Loading, please wait.');
                         delayandclr;

               end; {end of for loop}
          end; {end of fakeloadbar}


begin {main program}
     randomize;
     inpmak;
     countgrade;
     fakeloadingspin;
     plotchart
end. {end of entire program}

