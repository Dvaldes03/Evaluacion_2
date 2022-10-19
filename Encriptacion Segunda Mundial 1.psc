Algoritmo Encriptacion_Segunda_Mundial
	//Diego Valdés Arellano, David Campos, Manuel Venegas, Cristobal Pino, Thomas Orellana
	Definir firma,abecedario,firma_encriptada,mensaje Como Caracter
	Definir casos,lineas,contador,llave Como Entero
	//Se define el abecedario a ocupar
	abecedario<-" ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	contador<-0
	firma<-"ERIC LILLO"
	Escribir "Ingresar cantidad de casos"
	Leer casos
	//Se verifica que la cantidad de casos esté en el rango permitido
	Mientras  casos>0 y casos<=50 Hacer
		Escribir "Ingresar firma"
		Leer firma_encriptada
		Para i<-6 Hasta 27 Con Paso 1 Hacer
			Si Subcadena(abecedario,i,i)<>Subcadena(firma_encriptada,1,1) Entonces
				contador<-contador+1
			Sino
				i<-27
			FinSi
		FinPara
		Escribir contador
		Escribir "Ingresar cantidad de lineas a desencriptar"
		Si lineas>=3 y lineas<=10 Entonces
			Leer lineas
			Para i<-1 Hasta lineas con paso 1 Hacer
				Escribir "Ingresar linea ",i
				Leer mensaje
				Para j<-1 Hasta Longitud(mensaje) Con Paso 1 Hacer
				FinPara
			FinPara
		FinSi
	FinMientras
FinAlgoritmo