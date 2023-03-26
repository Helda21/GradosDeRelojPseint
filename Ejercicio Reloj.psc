
SubProceso DatosPersonales
	Definir nombre,edad como cadena;
	Escribir "Digite su nombre ";
	leer nombre;
	Escribir "Señor(a) ",nombre, " digite su edad ";
	Leer edad;
	Escribir "Señor(a) ",nombre, " su edad es ",edad;
	Escribir "por favor siga ";
FinSubProceso

SubProceso  Relojp
	
	Definir hora, minuto, res1, res2,segundo1,res3, total,total1,total2,opciones Como Real;
	
	
	Escribir "por favor digite la hora: ";
	leer hora;
	Escribir "por favor digite los minutos: ";
	leer minuto;
	Escribir "Por favor digite los segundos ";
	leer segundo1;
	res1 <- ((360/12)*hora);
	res2 <- ((360/60)*minuto);
	res3 <- ((360/3600)*segundo1);

	
	
	Repetir
		Escribir "Ingrese opción: ";
		Leer opciones;
		Escribir "Elija una opcion del 1 al 3 de la siguiente forma:";
		Si (No(opciones = 1 o opciones = 2 o opciones = 3)) Entonces
			Escribir "Debe ingresar una opcion correcta";
		FinSi
	Hasta Que (opciones = 1 o opciones = 2 o opciones = 3)
		
		Segun opciones Hacer
			1:
				//horario a segundero
				si res1 > res3 Entonces
					total <- (res3+360)-res1;
				SiNo
					total <- res3-res1;
				FinSi
			2:
				//horario a minutero
				si res1 > res2 Entonces
					total <- (res2+360)-res1;
				SiNo
					total <- res2-res1;
				FinSi
			3:
				//minuto a segundero
				si res2 > res3 Entonces
					total <- (res3+360)-res2;
				SiNo
					total <- res3-res2;
				FinSi
			De Otro Modo:
				Escribir "Muchas gracias por participar";
		FinSegun


	Escribir "el total de grados entre el horario y el minutero es: ", total;
	

FinSubProceso	
	


Algoritmo Reloj
	DatosPersonales;
	Relojp;
FinAlgoritmo



