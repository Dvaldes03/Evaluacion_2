Algoritmo Encriptacion_Segunda_Mundial
	//Diego Valdés Arellano, David Campos, Manuel Venegas, Cristobal Pino, Thomas Orellana
	Definir encriptado,firma,abecedario,firma_encriptada Como Caracter
	Definir casos,lineas,contador,llave Como Entero
	//Se define el abecedario a ocupar
	Dimension abecedario[27]
	abecedario[1]<-"A"
	abecedario[2]<-"B"
	abecedario[3]<-"C"
	abecedario[4]<-"D"
	abecedario[5]<-"E"
	abecedario[6]<-"F"
	abecedario[7]<-"G"
	abecedario[8]<-"H"
	abecedario[9]<-"I"
	abecedario[10]<-"J"
	abecedario[11]<-"K"
	abecedario[12]<-"L"
	abecedario[13]<-"M"
	abecedario[14]<-"N"
	abecedario[15]<-"O"
	abecedario[16]<-"P"
	abecedario[17]<-"Q"
	abecedario[18]<-"R"
	abecedario[19]<-"S"
	abecedario[20]<-"T"
	abecedario[21]<-"U"
	abecedario[22]<-"V"
	abecedario[23]<-"W"
	abecedario[24]<-"X"
	abecedario[25]<-"Y"
	abecedario[26]<-"Z"
	abecedario[27]<-" "
	contador<-0
	firma<-"ERIC LILLO"
	Escribir "Ingresar cantidad de casos"
	Leer casos
	//Se verifica que la cantidad de casos esté en el rango permitido
	Mientras  casos>0 y casos<=50 Hacer
		Escribir "Ingresar firma"
		Leer firma_encriptada
		
		Escribir "Ingresar cantidad de lineas a desencriptar"
		Si lineas>=3 y lineas<=10 Entonces
			Leer lineas
		FinSi
	FinMientras
FinAlgoritmo