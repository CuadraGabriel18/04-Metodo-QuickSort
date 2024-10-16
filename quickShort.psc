Algoritmo quickShort
	Dimension Quicksort(10);
	Limite=9 
	
	Para i<-1 Hasta Limite Con Paso 1 Hacer// Bucle para ingresar valores en el vector.
		Escribir "Ingrese el numero entero" i, "para ordenar"
		leer Quicksort(i)
	FinPara
	Escribir "Los valores ingresados son:"
	
	Para i<- 1 Con Paso 1 Hasta Limite Hacer// Muestra los valores ingresados.
		Escribir  i,":",Quicksort(i)
	FinPara
	Ordenar(Quicksort,1,9)
	Escribir "Numeros ordenados:"
	Para i<-1 Hasta Limite Con Paso 1 Hacer // Muestra los valores ordenados en el vector.
		Escribir "[",i,"] : ", Quicksort(i)
	FinPara
	
FinAlgoritmo

Funcion Ordenar(Vector,Principio,Final)// Función para ordenar un sub-vector 
	P<-Principio
	F<-Final
	pivote<-(Vector[P]+Vector[F])/2// Calcular el valor del pivote como el promedio de los extremos.
	Limite=9
	Para pasos<-1 Hasta 1 Hacer
		Escribir  "Paso siguiente:"
		Para k<-1 Hasta Limite Con Paso 1 Hacer// Mostrar los valores del vector 
			Escribir "[",k,"] : ", Vector(k)
		FinPara
	FinPara
	
	Mientras P<F Hacer// Bucle para ordenar el sub-vector.
		Mientras Vector[P]<pivote Hacer //  >
			P<-P+1
		FinMientras
		
		Mientras  Vector[F]>pivote Hacer//  <
			F<-F-1
		FinMientras
		
		Si P<=F Entonces//intercambiar los elementos en esas posiciones
			Auxiliar<-Vector[P]
			Vector[P]<-Vector[F]
			Vector[F]<-Auxiliar
			P<-P+1
			F<-F-1
		FinSi
		
	FinMientras
	Si Principio<F Entonces// Llamadas recursivas para ordenar los sub-vectores 
		Ordenar(Vector,Principio,F)
	FinSi
	
	si Final>P Entonces
		Ordenar(Vector,P,Final)
	FinSi
FinFuncion
