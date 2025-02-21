%% header
clc; clear all; close all;

%% Define players
i = 0;

% Read team
i = i + 1;
s(i).name = 'Andre';
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).team = 'Red';
s(i).color = [1 0 0];
s(i).killed = 0;

i = i + 1;
s(i).name = 'Eusebio';
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).team = 'Red';
s(i).color = [1 0 0];
s(i).killed = 0;

% Green team
i = i + 1;
s(i).name = 'Mariana';
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).team = 'Green';
s(i).color = [0 1 0];
s(i).killed = 0;


% Green team
i = i + 1;
s(i).name = 'Duarte';
s(i).x = rand()*20-10;
s(i).y = rand()*20-10;
s(i).team = 'Blue';
s(i).color = [0 0 1];
s(i).killed = 0;

%% Create the arena

h = figure;
plot([-10 10 10 -10 -10], [10, 10, -10, -10, 10], 'k--')
hold on;
axis([-12 12 -12 12])
title('Team Hunt TP1')
set(h, 'Position', [961 29 960 935])

%% Draw all players initial position
for i=1:size(s,2)
    s(i).h = plot(s(i).x, s(i).y, '.', ...
        'MarkerSize',26, 'Color', s(i).color);
    s(i).h_text = text(s(i).x+0.1, s(i).y, s(i).name, 'Color',s(i).color);
end


%% Play the game
for k=1:500

    % Move players
    for i=1:size(s,2)
        s = movePlayer(s, i);
    end

    % Detect when a player is hunted
    for i=1:size(s,2)
        for j=1:size(s,2)
            if strcmp(s(i).team, 'Red') && strcmp(s(j).team, 'Blue')
                d = sqrt((s(j).x - s(i).x)^2 + (s(j).y - s(i).y)^2);
                if d < 0.1
                    disp(['Player ' s(i).name ' was killed!!!'])
                    s(i).killed = 1;
                end
            end
            % TODO for other teams 

        end

    end


    % Detect if a player is outside of the arena
    for i=1:size(s,2)
        if s(i).x < -10 || s(i).x > 10 || ...
                s(i).y < -10 || s(i).y > 10
            % if outside, place in random position
            s(i).x = rand()*6-3;
            s(i).y = rand()*6-3;
        end
    end


    % Draw all players
    for i=1:size(s,2)
        set(s(i).h, 'XData', s(i).x, 'YData', s(i).y)
        set(s(i).h_text, 'Position', [s(i).x+0.1 s(i).y 0]);

        if s(i).killed == 1
            set(s(i).h, 'Color', s(i).color*0.5)
        end
    end
    

    pause(0.1)
end