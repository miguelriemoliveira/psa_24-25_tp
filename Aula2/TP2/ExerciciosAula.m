%header 
clc;
clear all;
close all;

%% Ex 2.1

xs = rand(1,100) * 20 - 10;
ys = rand(1,100) * 10 - 5;

plot(xs,ys,'or')

%% Ex 2.2
clear all
clc
close all

x0 = rand()* 20 - 10;
y0 = rand()* 10 - 5;

% sortear 40 valores diferentes de translação
vmax = 0.5;
txs = rand(1,40)*2*vmax-vmax;
tys = rand(1,40)*2*vmax-vmax;

%aplicar a translação

xs = x0 + txs;
ys = y0 + tys;


plot(x0, y0, '*r')
hold on 
plot(xs, ys, '.b')


%% Ex 2.3
clear all
clc
close all

x0 = rand()* 20 - 10;
y0 = rand()* 10 - 5;
h = plot(x0, y0, '*r', 'MarkerSize',6)

% ms = 6;
% for i = 1:10 % fazer crescrer o marker
%     set(h, 'MarkerSize',ms)
%     ms = ms + 3
%     pause
% end

hold on 
axis([-10 10 -10 10]); % axis([xmin xmax ymin ymax])
grid on

x = x0;
y = y0;
for i=1:40

    % sortear tx e ty
    vmax = 0.5;
    tx = rand()*2*vmax-vmax;
    % tx = 0;
    ty = rand()*2*vmax-vmax;

    x = x + tx;
    y = y + ty;

    % Desenhar o rasto 
    % plot(x, y, 'ob')

    % Alterar o desenho da pose inicial para a nova pose
    set(h, 'XData',x, 'YData', y)

    pause(0.1)

end




