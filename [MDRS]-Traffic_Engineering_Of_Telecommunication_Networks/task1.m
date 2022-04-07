clear all;
close all;

% definir uma matriz com a localizacao de cada no, para depois calcular o
% comprimento das ligacoes (coordenada x,y de cada no)
Nodes= [30 70
       350 40
       550 180
       310 130
       100 170
       540 290
       120 240
       400 310
       220 370
       550 380];
% definir um vetor que da as ligacoes entre nos 
Links= [1 2
        1 5
        2 3
        2 4
        3 4
        3 6
        3 8
        4 5
        4 8
        5 7
        6 8
        6 10
        7 8
        7 9
        8 9
        9 10];
% definir uma matriz para cada fluxo (no origem, no destino, debido binario
% origem-destino, debito binario destino-origem)
T= [1  3  1.0 1.0
    1  4  0.7 0.5
    2  7  2.4 1.5
    3  4  2.4 2.1
    4  9  1.0 2.2
    5  6  1.2 1.5
    5  8  2.1 2.5
    5  9  1.6 1.9
    6 10  1.4 1.6];

nNodes= 10;
nLinks= size(Links,1);
nFlows= size(T,1);

B= 625;  % Average packet size in Bytes

co= Nodes(:,1)+j*Nodes(:,2);

% matriz com os comprimentos de cada ligacao ij ou infinito se a ligacao nao existir, com a diagonal a zeros
L= inf(nNodes);    %Square matrix with arc lengths (in Km)
for i=1:nNodes
    L(i,i)= 0;
end

C= zeros(nNodes);  %Square matrix with arc capacities (in Gbps)
for i=1:nLinks
    C(Links(i,1),Links(i,2))= 10;  %Gbps
    C(Links(i,2),Links(i,1))= 10;  %Gbps
    d= abs(co(Links(i,1))-co(Links(i,2)));
    L(Links(i,1),Links(i,2))= d+5; %Km
    L(Links(i,2),Links(i,1))= d+5; %Km
end
L= round(L);  %Km
n= 5; %100 k/shortest paths (ou seja todos os possiveis)
[sP nSP]= calculatePaths(L,T,n); %calcular os shortestPaths para cada flow assim como o numero total de shortestpaths para cada flow
%% 1.b with RANDOM STRATEGY:
n= 100; %100 k/shortest paths (ou seja todos os possiveis)
[sP nSP]= calculatePaths(L,T,n); %calcular os shortestPaths para cada flow assim como o numero total de shortestpaths para cada flow

t= tic;
bestLoad= inf;
sol= zeros(1,nFlows);
allValues= [];
while toc(t)<10      % nº de segundos q percorrer desde o instante de tempo ate a comparacao
    % gerar multiplas solucoes random
    for i= 1:nFlows
        sol(i)= randi(nSP(i));  % nSP(i) = nº de percursos num fluxo
    end
    % calcula as cargas destas solucao gerada
    
    Loads= calculateLinkLoads(nNodes,Links,T,sP,sol);
    % verificar com o maior valor das cargas entre a 3 e 4 colunas
    load= max(max(Loads(:,3:4)));
    % guardar todos os valores de carga maxima de todas as solucoes
    allValues= [allValues load];
    %  ficar com a melhor solucao de todas
    if load<bestLoad
        bestSol= sol;
        bestLoad= load;
    end
end
plot(sort(allValues));
fprintf('RANDOM:\n');
fprintf('   Best load = %.2f Gbps\n',bestLoad);
fprintf('   No. of solutions = %d\n',length(allValues));
fprintf('   Av. quality of solutions = %.2f Gbps\n',mean(allValues));

%N = 10

n= 10; %100 k/shortest paths (ou seja todos os possiveis)
[sP nSP]= calculatePaths(L,T,n); %calcular os shortestPaths para cada flow assim como o numero total de shortestpaths para cada flow

t= tic;
bestLoad= inf;
sol= zeros(1,nFlows);
allValues= [];
while toc(t)<10      % nº de segundos q percorrer desde o instante de tempo ate a comparacao
    % gerar multiplas solucoes random
    for i= 1:nFlows
        sol(i)= randi(nSP(i));  % nSP(i) = nº de percursos num fluxo
    end
    % calcula as cargas destas solucao gerada
    
    Loads= calculateLinkLoads(nNodes,Links,T,sP,sol);
    % verificar com o maior valor das cargas entre a 3 e 4 colunas
    load= max(max(Loads(:,3:4)));
    % guardar todos os valores de carga maxima de todas as solucoes
    allValues= [allValues load];
    %  ficar com a melhor solucao de todas
    if load<bestLoad
        bestSol= sol;
        bestLoad= load;
    end
end
hold on
plot(sort(allValues));
fprintf('RANDOM:\n');
fprintf('   Best load = %.2f Gbps\n',bestLoad);
fprintf('   No. of solutions = %d\n',length(allValues));
fprintf('   Av. quality of solutions = %.2f Gbps\n',mean(allValues));

%N = 5

n= 5; %100 k/shortest paths (ou seja todos os possiveis)
[sP nSP]= calculatePaths(L,T,n); %calcular os shortestPaths para cada flow assim como o numero total de shortestpaths para cada flow

t= tic;
bestLoad= inf;
sol= zeros(1,nFlows);
allValues= [];
while toc(t)<10      % nº de segundos q percorrer desde o instante de tempo ate a comparacao
    % gerar multiplas solucoes random
    for i= 1:nFlows
        sol(i)= randi(nSP(i));  % nSP(i) = nº de percursos num fluxo
    end
    % calcula as cargas destas solucao gerada
    
    Loads= calculateLinkLoads(nNodes,Links,T,sP,sol);
    % verificar com o maior valor das cargas entre a 3 e 4 colunas
    load= max(max(Loads(:,3:4)));
    % guardar todos os valores de carga maxima de todas as solucoes
    allValues= [allValues load];
    %  ficar com a melhor solucao de todas
    if load<bestLoad
        bestSol= sol;
        bestLoad= load;
    end
end

title('Worst link load values of all solutions')
ylabel('Best Loads (Gbps)')
xlabel('Number of solutions')

hold on
plot(sort(allValues));
legend('n=100','n=10', 'n=5');
fprintf('RANDOM:\n');
fprintf('   Best load = %.2f Gbps\n',bestLoad);
fprintf('   No. of solutions = %d\n',length(allValues));
fprintf('   Av. quality of solutions = %.2f Gbps\n',mean(allValues));
