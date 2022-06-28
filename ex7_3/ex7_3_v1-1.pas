program NIM;
var
    NIMstones : integer; { stores number of stones left }
    endgame : boolean;   { state TRUE indicates end of game}
    turn : string;       { stores players and ais turn}



procedure PlayerTurn (var stones : integer);
var
    take : integer;

begin
    writeln;
        write('Input number of stones to be taken: ');
    readln(take);
    if (take < 4) and (take > 0) and (take <= stones)
            then stones := stones - take
            else begin
                writeln('Invalid input. Please try inputting something that works and re-enter.');
                PlayerTurn(stones);
    end; 
end; { end of PlayerTurn }
    


procedure AITurn(var stones : integer);
var 
    take : integer;
begin
    writeln;
        writeln('AI Turn');
        case stones of
            0 : take := 1;
            1 : take := 1;
            2 : take := 1;
            3 : take := 2;
            4 : take := 3;
            5 : take := 1;
            6 : take := 1;
            7 : take := 2;
            8 : take := 3;
            9 : take := 2;
            10 : take := 1;
            11 : take := 2;
            12 : take := 3;
            13 : take := 3;
            14 : take := 1;
            15 : take := 2;
            16 : take := 3;
            17 : take := 1;
            18 : take := 1;
            19 : take := 2;
            20 : take := 3;
            21 : take := 2;
            22 : take := 1;
            23 : take := 2;
            24 : take := 3;
            25 : take := 3;
            26 : take := 1;
            27 : take := 2;
            28 : take := 3;
            29 : take := 1;
            30 : take := 1;
        end;

    writeln('AI takes ' , take);
        stones := stones - take;
    writeln('Stones left = ', stones)
end; { end of AITurn}



begin { main program }
        randomize;
    endgame := false;
    { generating a random number of stones }
        NIMstones := 15 + random(16);
    turn := 'player';
    if NIMstones < 1 then writeln('There are no stones left.') else
    writeln('There are ', NIMstones , ' stones.');
    
    repeat
        if turn = 'player'
            then begin
                 PlayerTurn(NIMstones);
                 turn := 'ai';
                 end { end of player }           
        else if turn = 'ai' 
            then begin
                 AITurn(NIMstones);
                 turn := 'player';
                 end; { end of ai }
        if NIMstones < 1
            then endgame := true;
    until endgame;
    if turn = 'ai'
        then begin writeln('AI wins!');
             writeln('AI is the future!');
             writeln('You Lost!');
             writeln('Try harder!')
             end
        else writeln('Player wins.');
end.
    
    
    
    
    
    
    