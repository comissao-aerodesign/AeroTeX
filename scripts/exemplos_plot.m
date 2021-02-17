% % Definir fonte e letra de todos os graficos a serem gerados
set(0,'defaultTextFontName', 'times new roman')
set(0,'defaultAxesFontName', 'times new roman')
set(0,'defaultAxesFontSize', 14)

% % Definir fonte e letra de apenas grafico atual
% set(gca,'FontName', 'times new roman')
% set(gca,'FontSize', 14)

%% Cores e estilos pre-definidos
%            b     blue          .     point              -     solid
%            g     green         o     circle             :     dotted
%            r     red           x     x-mark             -.    dashdot 
%            c     cyan          +     plus               --    dashed   
%            m     magenta       *     star             (none)  no line
%            y     yellow        s     square
%            k     black         d     diamond
%            w     white         v     triangle (down)
%                                ^     triangle (up)
%                                <     triangle (left)
%                                >     triangle (right)
%                                p     pentagram
%                                h     hexagram

close all;
markers={'o','^','s','o','^','s','s','h','p'};
colors = {'r','k','b','g','y','m','c'};
figure;
plot([1 1.25 1.5 1.75 2],[1 1.25 1.5 1.75 2],'ko-');
hold on
plot([1 1.25 1.5 1.75 2],[1 1.25 1.5 1.75 2].*1.5,'rs--');
title('Exemplo')
xlabel('Eixo x')
ylabel('Eixo y')
legend('Exemplo 1','Exemplo 2')
grid on

% salvar em PDF
print('-dpdf','exemplo1')

% salvar em jpeg
print('-djpeg','exemplo1')
%% Usando RGB

RGBcode = [0 1 0.5];
RGBcolors = fullfact([2 2 3]);
RGBcolors = RGBcode(RGBcolors);

figure;
hold on
n = size(RGBcolors,1);
for i = 1:n
    plot([1 2], [1 2]./i,'LineWidth',0.5,'Color',RGBcolors(i,:),'LineStyle','-')
    legendas{i} = ['Ex.: ' num2str(i)];
end
grid minor
legend(legendas,'Location','northwest')
title('Exemplo')
xlabel('Eixo x')
ylabel('Eixo y')

% salvar em PDF
print('-dpdf','exemplo2')

% salvar em jpeg
print('-djpeg','exemplo2')