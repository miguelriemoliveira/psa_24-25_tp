%%Cabeçalho
clc
clear all
close all;

a = 4
b = 6
c = a + b

v = [3,4]
sum(v)

whos % para ver todas as variaveis em memoria


%% Tipos de variaveis
clc

% do tipo texto
texto = 'ola, brm vindo a PSA'

% do tipo numerico

%double
a = 5


%inteiro

b = uint8(7)


% logical -> boolean

c = logical(1)

whos


%% Estruturas de controlo
clc
clear all

%% if
a = 2
if a > 3
    disp('a variavel a é maior que 3')
else
    disp('a variavel a é menor que 3')
end


%% ciclos ou repetições

% com ciclo for
texto = '';
for i=1:15
    texto = [texto '+'];
end
i
texto

% com ciclo while
texto = ''; % inicializar uma variavel
i=1;
while i<16
    texto = [texto '+'];
    i = i +1;
end

texto


%% Desafio

% guardar para três pessoas três caracteristicas
% - idade
% - num mec
% - nome

% pedir pela linha de comandos a informação (opcional)

% imprimir tudo


%% Option 1: separate variables
clc
clear all;

nome1 = 'Andre';
idade1 = 44;
num_mec1 = 135345;

nome2 = 'Joao';
idade2 = 43;
num_mec2 = 32434;

% add more 1000 names, iadades and num_mecs


% somar as iades de todas as pessoas na base de dados
% total_idades = idade1 + idade2


%% Option 2: vectors
clc
clear all;

nomes = ['Andre', 'João', 'Rita'];
idades = [44, 17,23];
num_mecs = [135345, 34234,4354];

%total_idades = idades(1) + idades(2) + id

total_idades = 0;
for i=1:size(idades,2) % i=1:3
    total_idades = total_idades + idades(i);
end

total_idades

%% Option 3: estruturas
clc
clear all;

nomes = {'Andre', 'João', 'Rita'};
idades = [44, 17,23];
num_mecs = [135345, 34234,4354];
pesos= [80, 40, 55, 76];
alturas= [1.80, 1.55, 1.8, 1.67];

% calcular o IMC = altura/peso


% for i=1:size(pesos,2) % i=1:3
%     imc = alturas(i)/pesos(i);
%     disp(['O/A ' nomes{i} ' tem um imc de ' num2str(imc) ])
% end


%% Option 4: vetores de estruturas
clc
clear all;

pessoas(1).nome = 'Joao';
pessoas(1).idade = 33;
pessoas(1).peso = 78;
pessoas(1)

pessoas(2).nome = 'Rita';
pessoas(2).idade = 23;
pessoas(2).peso = 48;
pessoas(2)

pessoas(3).nome = 'Joana';
pessoas(3).idade = 53;
pessoas(3).peso = 88;
pessoas(3)

% calcular o toal de idades»
total_idades = 0;
for i=1:size(pessoas,2)
    total_idades = total_idades + pessoas(i).idade;
end
total_idades

% calcular o imc

pessoas(1).altura = 1.78;
pessoas(2).altura = 1.48;
pessoas(3).altura = 1.88;


for i=1:size(pessoas,2)
    imc = pessoas(i).altura/pessoas(i).peso;
    disp(['O/A ' pessoas(i).nome ' tem um imc de ' num2str(imc) ])
end
total_idades



