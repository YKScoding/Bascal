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
        writeln('Human Turn.');
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
    take , m : integer;
begin
    writeln;
        writeln('AI Turn');
		m := stones mod 4;
        case m of
            0 : take := 3;
			1 : take := random(3) + 1;
			2 : take := 1;
			3 : take := 2
        end;

    writeln('AI takes ' , take);
        stones := stones - take;
    writeln;
    writeln('Stones left = ', stones)
end; { end of AITurn}



begin { main program }
        randomize;
    endgame := false;
    { generating a random number of stones }
        NIMstones := 15 + random(16);
    turn := 'player';
    if NIMstones < 1 then writeln('There are no stones left.') else begin
        writeln;
        writeln('There are ', NIMstones , ' stones.')
    end;
    
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
    
    
    
    
    
    
    