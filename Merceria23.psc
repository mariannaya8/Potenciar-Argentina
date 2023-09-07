Algoritmo Merceria_Tu_Lana
	//definimos las variables
	Definir usuario,contrasena,user,password Como Cadena;
	definir metros,precio,tela, total Como entero;
	//asignamos valores 
	usuario<-"tulana";
	contrasena<-"merceria123";
	totalFinal<-0;
	Repetir
		//pedimos al cliente entrar a su cuenta
		escribir "ingrese un usuario";
		leer user;
		escribir "contraseña";
		leer password;
		si (user==usuario) Y (password==contrasena)Entonces
			limpiar pantalla;
			Escribir "*====Bienvenido al sistema====*";
		SiNo
			Escribir "usuario y/o contraseña incorrecto";
		FinSi;
	Hasta Que user==usuario Y password==contrasena
	//sistema de registro de ventas,pedimos que tipo de tela quiere cargar en sistema y cuantos metros
	//para generar el archivo de ganancias mensual.
	Repetir
		Repetir
			Escribir "que tela quiere registrar?"
			Escribir "1: SEDA         3:MODAL"
			Escribir "2: POLAR        4:ALGODON"
			Leer tela;
		Hasta Que tela> 0 Y tela<5
		//asignamos los valores del rollo de tela
		seda<- 24000
		polar <- 18000
		modal<-6500
		algodon<-6000
		Escribir "cuantos rollos vendio?"
		Repetir
			leer rollo
			si rollo>0 entonces
				si (tela==1)Entonces
					total<-(rollo*24000);
					totalFinal<-totalFinal+total;
				SiNo
					si (tela==2) Entonces
						total <-(rollo*18000);
						totalFinal<-totalFinal+total;
					SiNo
						si(tela==3) Entonces
							total <-(rollo*6500);
							totalFinal<-totalFinal+total;
						SiNo
							si(tela==4) Entonces
								total <-(rollo*6000);
								totalFinal<-totalFinal+total;
							FinSi
						FinSi
					FinSi
				FinSi
			SiNo
				escribir "Ingrese un número mayor a 0";
			FinSi
		Hasta Que rollo >0
		escribir "su ganancia:$", total;
		Escribir "registrar otra variedad? (si/no)";
		leer resp
	Hasta Que resp = "no"
	escribir "perfecto! su informacion ha sido guardada con exito"
	escribir "su ganancia total mensual es de :$", totalFinal;
FinAlgoritmo