clear all % para la eliminaci�n de todas las variables de la memoria  
close all % para cerrar todas las ventanas excepto comando ventana 
clc % para despejar el comando ventana
F1 = input ( 'Introduzca la frecuencia de la onda sinusoidal portadora :'); 
F2 = input ( 'Introduzca la frecuencia de peri�dico binario pulso :'); 
A=3; % Amplitud 
t = 0: 0.001: 1; % Para ajustar el intervalo de muestreo 
x = A*sin (2*pi*t*F1); % Para el 1er Generaci�n Carrier onda sinusoidal
u =A*square(2*pi*t*F2)+(A/2); % Para el cuadrado de generaci�n de mensaje de onda 
subplot (4,1,1); % Para trazar la portadora de onda 
plot (t, x) 
xlabel ( 'Tiempo') 
ylabel ( ' Amplitud ') 
title ( ' Portadora de onda')
grid on
subplot (4,1,2) % para trazar la Plaza binario de pulso (Mensaje) 
plot (t, u) 
xlabel ( 'Tiempo') 
ylabel ( ' Amplitud ') 
title ( ' Binary Pulsos')
grid on
w=x.*u;
subplot (4,1,3) % para el trazado de la onda modulada 
plot (t, w) 
xlabel ( 'Tiempo') 
ylabel ( ' Amplitud ') 
title ( 'onda modulada FSK')

