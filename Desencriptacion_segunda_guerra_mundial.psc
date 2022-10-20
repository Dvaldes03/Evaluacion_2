Algoritmo Desencriptacion_segunda_guerra_mundial
	//Diego Valdés Arellano, David Campos, Manuel Venegas, Cristobal Pino, Thomas Orellana
	Definir firma,abecedario,firma_encriptada,mensaje,desencriptado Como Caracter
	Definir casos,lineas,contador,contador2,llave,i,j,k Como Entero
	//Se define el abecedario a ocupar
	abecedario<-" ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	contador<-0
	contador2<-1
	firma<-"ERIC LILLO"
	Escribir "Ingresar cantidad de casos"
	Leer casos
	//Se verifica que la cantidad de casos esté en el rango permitido
	Mientras  casos>0 y casos<=50 Hacer
		Para k<-1 Hasta casos con paso 1 Hacer
			Escribir "Ingresar firma del caso ",k
			Leer firma_encriptada
			//Se empieza a buscar la cantidad de posiciones que toma llegar de la primera letra de la firma a "E"
			Para i<-6 Hasta 27 Con Paso 1 Hacer
				//Se cuentan la cantidad de posiciones movidas en caso de que no coincidan las letras
				Si Subcadena(abecedario,i,i)<>Subcadena(Mayusculas(firma_encriptada),1,1) Entonces
					contador<-contador+1
					//Si se llega a la Z, se vuelve al " "
					Si i==27 Entonces
						i<-1
					FinSi
				Sino
					//Se corta el bucle
					i<-27
				FinSi
			FinPara
			Escribir "Ingresar cantidad de lineas a desencriptar"
			Leer lineas
			//Se evalua que la cantidad de lineas esté en el rango aceptado
			Si lineas>=3 y lineas<=10 Entonces
				Para i<-1 Hasta lineas con paso 1 Hacer
					Escribir "Ingresar linea ",i
					Leer mensaje
					Si Longitud(mensaje)<=60 Entonces
						//Se empieza a descifrar el mensaje
						Mientras contador2<=Longitud(mensaje) hacer
							Para j<-1 Hasta 27 Con Paso 1 Hacer
								//Se evalua cual es la posicion de la letra que coincide con la del mensaje encriptado
								Si Subcadena(mensaje,contador2,contador2)==Subcadena(abecedario,j,j) Entonces
									Si (j-contador)<0 Entonces
										//Si es verdadero, se retrocede desde la Z contando las posiciones que faltan
										Escribir Subcadena(abecedario,27-(contador-j),27-(contador-j)) sin saltar
										j<-27
									SiNo
										Si Subcadena(abecedario,j,j)==" " Entonces
											//Se avanza hacia atras contando el espacio como una posicion
											Escribir Subcadena(abecedario,28-contador,28-contador) Sin Saltar
											//Se rompe el bucle para
											j<-27
										FinSi
										//Se escribe la letra dependiendo del patron
										Escribir Subcadena(abecedario,j-contador,j-contador) Sin Saltar
									FinSi
									Si (j-contador)==0 Entonces
										//Si es verdadero, se escribe la Z
										Escribir Subcadena(abecedario,27,27) Sin Saltar
										j<-27
									FinSi
								FinSi
							FinPara
							//Se reinicia j para reiniciar el bucle para
							j<-1
							//El contador aumenta para no tener loop infinito
							contador2<-contador2+1
						FinMientras
						//Se reinicia contador2
						contador2<-1
						Escribir " "
					FinSi
				FinPara
			SiNo
				Escribir "Numero fuera del rango aceptado"
			FinSi
			//Se reinicia el contador 1 para no acumular el valor de la llave
			contador<-0
		FinPara
		//Se vuelve a solicitar la cantidad de casos
		Escribir "Ingresar cantidad de casos"
		Leer casos
	FinMientras
	Escribir "Numero de casos fuera del rango aceptado"
FinAlgoritmo
