clc % clears screen
clear all % clears all variablers
close all % Closes al open figures

% Autor:
% Data: 



%% Tipos de variáveis

a = 3
b = 5
c = a + b

d = uint8(7)



% String -> conjunto de caracteres-> texto
% Logical 0-1 False-True

% uint8 u -> unsigned; int -> inteiro; 8 -> 8 bits

% double -> numeros reais de -oo a +oo 
whos



%% Estruturas de controlo

a = 7

% testes ou condições
if a > 3
    disp('a é maior que 3')
else
    disp('a é menor ou igual a 3')
end

% repetições

%construir um teto cheio de letras

texto = ''; % inicialização da variavel

texto = [texto 'a'];
texto = [texto 'a'];
texto = [texto 'a'];
texto = [texto 'a'];
texto = [texto 'a'];

texto

% ciclos ou repetições
texto = ''; % inicialização da variavel

for i=1:5
    texto = [texto 'a'];
end

texto


% teceira opção com o while
texto = ''; % inicialização da variavel

i = 1
while i<6
    texto = [texto 'a'];
    i = i +1;
end

texto

%% Utilização de funções

% total = 0;
% 
% for i=1:5
%     total = somar(total, i);
% end
% 
% total
clc

a = 1
b = 2

c = somar(a,b);

c


%% 
clear all
clc

idades = [17, 70, 50, 23, 12, 30]
num_mecs= [17212, 703123, 123123, 501231, 123123 12123123, 301232]

nome_mariana = 'mariana'
nome_tomas = 'tomas'

% total = idades(1) + idades(2)

total = 0;
for i=1:size(idades,2) % i=1:6
    total = total + idades(i);

end

size(idades)
size(num_mecs)

% total = 0;
% for i=1:size(num_mecs,2) % i=1:6
%     disp(['O elemento i ' num2str(i)])
% 
%     divisao = num_mecs(i) / idades(i)
% 
% end

%% utilizar estruturas (struct)
clc
clear all

% pessoa 1
pessoa1.idade = 17;
pessoa1.num_men = 145345;
pessoa1.nome = 'João';
pessoa1

% pessoa2
pessoa2 = struct('idade', 17, 'num_mec', 145345, 'nome', '')

% resposta = input('Coloca o nome seguido de enter ...','s')
% pessoa2.nome = resposta;

pessoa2

%% vetor de estruturas
clear all
clc

% pessoa 1
pessoa(1).idade = 17;
pessoa(1).num_men = 145345;
pessoa(1).nome = 'João';


% pessoa 2
pessoa(2).idade = 37;
pessoa(2).num_men = 155345;
pessoa(2).nome = 'Rita';

pessoa(1)
pessoa(2)


% somar as idades
total = 0;
for i=1:size(pessoa,2)
    total = total + pessoa(i).idade;
end
total





























