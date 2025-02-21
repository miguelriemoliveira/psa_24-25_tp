%% Header
clc
clear all

%% Ex 2.1

xs = rand(1,100)*20-10;
ys = rand(1,100)*10-5;


plot(xs,ys,'.g')



%% Ex 2.2
clc
clear all
close all

x = rand(1,1)*20-10;
y = rand(1,1)*10-5;


plot(x,y,'.g', 'MarkerSize',26)
hold on

vmax = 0.5;

tx = rand(1,40)*2*vmax-vmax;
ty = rand(1,40)*2*vmax-vmax;

xs = x + tx;
ys = y + ty;

plot(xs, ys, 'ok')


%% Ex 2.3
clc
clear all
close all

x0 = rand(1,1)*20-10;
y0 = rand(1,1)*10-5;


h = plot(x0,y0,'.g', 'MarkerSize',26);
hold on
axis([-10 10 -10 10]); %axis([xmin xmax ymin ymax])
grid on

vmax = 0.5;
x = x0; 
y = y0;
for i=1:40

    tx = rand()*2*vmax-vmax;
    % tx = 0.5;
    ty = rand()*2*vmax-vmax;
    x = x + tx;
    y = y + ty;
    plot(x,y, 'ro')% desenhar o rasto de movimento

    % Desenhar o jogador verde na posição atual
    set(h, 'XData', x, 'YData',y )
    

    pause(0.1)

end