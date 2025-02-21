%% Header
clc; clear all; close all;

%% Create players
i=0;

% red team


i = i +1;
s(i).team = 'red';
s(i).name = 'Rui';
s(i).color = [1 0 0];
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).killed = 0;


i = i +1;
s(i).team = 'red';
s(i).name = 'Bernardo';
s(i).color = [1 0 0];
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).killed = 0;
% green team
i = i +1;
s(i).team = 'green';
s(i).name = 'Leonardo';
s(i).color = [0 1 0];
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).killed = 0;

% blue team
i = i +1;
s(i).team = 'blue';
s(i).name = 'Miguel';
s(i).color = [0 0 1];
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).killed = 0;

i = i +1;
s(i).team = 'blue';
s(i).name = 'Gil';
s(i).color = [0 0 1];
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).killed = 0;

%% Create arena

h = figure;
set(h, 'Position', [961 29 960 935]) % put the figure where I want it

plot([-10 10 10 -10 -10], [10 10 -10 -10 10], '--k')
hold on
axis([-12 12 -12 12])

for i=1:size(s,2) % percorrer todos os jogadores
    s(i).h = plot(s(i).x, s(i).y, '.', 'MarkerSize',16, ...
        'Color',s(i).color);

    s(i).h_text = text(s(i).x+0.2, s(i).y, s(i).name, 'Color',s(i).color);
end


%% play the game


for k=1:500

    %% Move all players
    for i=1:size(s,2) % percorrer todos os jogadores
        s = movePlayer(s, i);% move
    end

    %% Check if a player was hunted
    for i=1:size(s,2) % percorrer todos os jogadores
        for j=1:size(s,2) % para cada jogador ver todos os outros
            if strcmp(s(i).team, 'red') && strcmp(s(j).team, 'blue')
                d = sqrt((s(j).x-s(i).x)^2 + (s(j).y - s(i).y)^2);
                if d < 0.05 % kill player
                    s(i).killed = 1;
                    set(s(i).h_text, 'Color', [0.5 0.6 0.6])
                end

            end
        end

    end



    %% Check if a player is outside the arena
    for i=1:size(s,2) % percorrer todos os jogadores
        if s(i).x < -10 || s(i).x > 10 || ...
                s(i).y < -10 || s(i).y > 10
            s(i).x = rand()*6-3;
            s(i).y = rand()*6-3;
        end
    end

    
    

    %% Draw all players
    for i=1:size(s,2) % percorrer todos os jogadores
        set(s(i).h, 'XData',s(i).x , 'YData',s(i).y)
        set(s(i).h_text, 'Position', [s(i).x+0.2 s(i).y 0])
    end

    pause(0.1)



end