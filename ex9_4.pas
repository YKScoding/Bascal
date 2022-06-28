
program ex9_4;
var
    pswd : string;
    cnt,c,d : int64;
    a : string;
    ca,cb,cc : boolean;
begin
    randomize;
    repeat
    ca:=false;
    cb:=false;
    cc:=false;
    pswd := '';
    for cnt := 1 to 8 do begin
        c := random(3);
        if (c=1) 
            then begin a := chr(random(26)+65); 
                ca:=true; 
            end
        else if (c=2) 
            then begin a := chr(random(26)+97); 
                cb:=true; 
            end
        else begin 
            d := random(9);
            str(d,a);
            cc:=true
            end;
        pswd := concat(pswd,a);
    end;
    until (ca=true) and (cb=true) and (cc=true);
    writeln('Strong password = ',pswd)
end.

