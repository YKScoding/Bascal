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
    if take < 4
        then stones := stones - take
        else begin
            writeln('Invalid input. Please try inputting a number less than the available stones and re-enter.');
            PlayerTurn(stones);
    end; 
end; { end of PlaerTurn }
    


procedure AITurn(var stones : integer);
var 
    take : integer;
begin
    writeln;
        writeln('AI Turn');
    take := stones mod 3;
        if stones < 4 then take := stones - 1;
        if take < 1 then take := 3;
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
    writeln('There are ', NIMstones , ' stones.');
    
    repeat
        if turn = 'player'
            then begin
                 PlayerTurn(NIMstones);
                 turn := 'ai';
                 end; { end of player }
        if turn = 'ai' 
            then begin
                 AITurn(NIMstones);
                 turn := 'player';
                 end; { end of ai }
        if NIMstones < 1
            then endgame := true;
    until endgame;
    if turn = 'ai'
        then writeln('AI wins!')
        else writeln('Player wins.');
end.
    
    
    
    
    
    
    