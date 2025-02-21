function s=movePlayer(s, i)

% if a player is dead, do not move
if s(i).killed == 1
    return
end

vmax = 0.2;
%% Basic will not move the players

if strcmp(s(i).team, 'red') % string comparison
    tx = rand()*2*vmax-vmax;
    ty = rand()*2*vmax-vmax;
elseif strcmp(s(i).team, 'green') % string comparison
    tx = 0;
    ty = 0;
elseif strcmp(s(i).team, 'blue') % string comparison
    % Find coordinates of prey player
    x_prey = 0;
    y_prey = 0;
    for j=1:size(s,2)
        if strcmp(s(j).team, 'red') && s(j).killed == 0
            x_prey = s(j).x;
            y_prey = s(j).y;
            break
        end
    end

    % define txt ty to hunt prey
    tx = x_prey - s(i).x;
    if tx > vmax
        tx = vmax;
    elseif tx < -vmax
        tx = -vmax;
    end


    ty = y_prey - s(i).y;
    if ty > vmax
        ty = vmax;
    elseif ty < -vmax
        ty = -vmax;
    end


end


%% aaply tx and ty
s(i).x = s(i).x  + tx;
s(i).y = s(i).y  + ty;