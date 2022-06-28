
program ex12_1;

uses
     SysUtils , Crt;                          {used for procedure FileExists and fakeloadingspin}
type
     CArray = array[1..20] of char;
var                                     {global variables}
     tLine : CArray;
     i , length : int64;
     df : text;
     fName : string;






procedure delayandclr; {sleep and clear screen}
     begin
          sleep(70); {using Crt library}
          ClrScr      {using SysUtils library}
     end; {end of delay and clr}   






procedure fakeloadingspin2; {procedure to make evil fake loading screen}
     var
          rng , i : int64;
          c : char;
          
     begin
          randomize;
               for rng := 1 to random(15) do 
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






procedure createfile; {creates a predetermined file}
     begin
          assign(df , 'data.txt');
          rewrite(df);
          writeln(df , 'mum was dad');
          writeln(df , 'dad saw mum');
          writeln(df);
          writeln(df , 'annog reven');
          writeln(df , 'pu uoy evig');
          writeln(df , 'annog reven');
          writeln(df , 'nwod uoy tel');
          close(df);
     end; {end of createfile}






procedure rev (num : int64; var line : CArray); 
{procedure for reversing the word order and displaying the reversed word. might split as 2 procedures later}
     var 
          i : int64;
     begin 
          writeln();
          for i := num downto 0 do
               write(line[i]);
     end; {end of rev}






procedure resettLine; {procedure for reseting and initializing the variable tLine}
     
     begin
          for i := 1 to 20 do 
               tLine[i] := ' ';
     end; {end of resettLine}






begin {of main program}
     writeln('Input the name of the file with file extension: ');
     readln(fName);
     if not(FileExists(fName)) {check if file exists, uses sysutils library}
          then begin 
               writeln('file not found! creating predetermined file.');
               writeln('press enter key to continue');
               readln;
               createfile;
               fName := 'data.txt';
               end {end of then begin}
          else begin 
               writeln('file found! reading file...');
               writeln('press enter key to continue');
               readln;
               end; {end of else begin}
          
     fakeloadingspin2;
     resettLine;
     assign(df , fName); {initializing the file variable}
     reset(df); {go to bof to prepare for reading}
     writeln();
     writeln('Contents in reverse order: ');
     while not eof(df) do begin
          length := 0;
          
          while not eoln(df) do begin
               length := length + 1;
               read(df , tLine[length]);
          end; {end of while eoln loop}
          
          readln(df);
          rev(length , tLine);
          resettLine;
     end; {end of while loop}
     close(df);
end.
     
