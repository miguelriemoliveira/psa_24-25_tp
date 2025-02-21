function s=movePlayer(s, i)

if s(i).killed == 1
    return
end

vmax = 0.3;


% Se for red  faz movimento aleatorio
if strcmp(s(i).team,'Red')
    tx = rand()*2*vmax-vmax;
    ty = rand()*2*vmax-vmax;

elseif strcmp(s(i).team,'Green') % if green go to right
    tx = vmax;
    ty = 0;

else % Se for blue, hunt a red player
    
    %Find the coordinates of the first red player
    x_prey = 0;
    y_prey = 0;
    for j=1:size(s,2) % iterate all playes and search for a red
        if strcmp(s(j).team, 'Red') && s(j).killed == 0
            x_prey = s(j).x;
            y_prey = s(j).y;
            break
        end
    end

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




s(i).x = s(i).x + tx;
s(i).y = s(i).y + ty;