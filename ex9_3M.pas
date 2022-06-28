program ex9_3;
var
    ID : string;
    function CheckRuleOne(userID : string):boolean;
        var
            d,ck,l : int64;
            tf : boolean;
            c : string;
        begin
        ck := 1;
        tf := true;
        l := length(userID);
        d := 0;
            repeat
                begin
                c := copy(userID,ck,1);
                if ((c >= 'a') and (c <='z')) or ((c >= 'A') and (c <= 'Z')) or (c = '.') or (c = '_') or ((c >= '0') and (c <= '9'))
                    then tf := true
                else tf := false;
                if (c = '.') 
                    then d := d + 1;
                ck := ck + 1
                end;
            until (tf = false) or (ck = l) or (d >= 2);
            if (d >= 2) then tf := false;
            CheckRuleOne := tf
        end;
    function CheckRuleTwo(userID : string):boolean;
        var
        c : string;
        tf : boolean;
        begin
        c := copy(userID,1,1);
        if ((c >= 'a') and (c <= 'z')) or ((c >= 'A') and (c <= 'Z'))
            then tf := true
            else tf := false;
        
        CheckRuleTwo := tf
        end;
    function CheckRuleThree(userID : string):boolean;
        var
        c : string;
        tf : boolean;
        begin
        c := copy(userID,(length(userID)),1);
        if (c = '.') or (c = '_')
            then tf := false
            else tf := true;
        CheckRuleThree := tf
        end;
begin
    write('Enter a user ID: ');
    readln(ID);
    if not CheckRuleOne(ID)
        then writeln('Only alphanumeric characters, underscores, and one dot are allowed.');
    if not CheckRuleTwo(ID)
        then writeln('The user ID must begin with an alphabet.');
    if not CheckRuleThree(ID)
        then writeln('The user ID must not end with an underscore or a dot.');
    if CheckRuleOne(ID) and CheckRuleTwo(ID) and CheckRuleThree(ID)
        then writeln('Valid user ID')
end.
