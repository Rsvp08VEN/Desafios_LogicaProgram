/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

#include<stdio.h>
#include<time.h>
#include<ctype.h>
#include<string.h>

/* No hay en el C estandar una funcion equivalente a "esperar", pero puede programarse. */
void esperar(double t);

/* No hay en el C estandar una funcion equivalente a "mayusculas", pero puede programarse. */
char *mayusculas(const char *s);

/* No hay en el C estandar una funcion equivalente a "subcadena", pero puede programarse. */
char *subcadena(const char *s, int desde, int cuantos);

/* Función auxiliar para el manejo de cstrings temporales, ver detalles más abajo. */
char *get_aux_buffer(double t);
/* En C no hay variables para guardar cadenas de texto, sino que debe construirse
   un arreglo de caracteres (tipo char). El tamaño del arreglo determina la longitud
   máxima que puede tener la cadena que guarda (tamaño-1, por el caracter de terminación).
   La constante MAX_STRLEN define el tamaño máximo que se utiliza en este programa para
   cualquier cadena. */
#define MAX_STRLEN 256

/* Para las variables que no se pudo determinar el tipo se utiliza la constante
   SIN_TIPO. El usuario debe reemplazar sus ocurrencias por el tipo adecuado
   (usualmente int,float,bool, o char[]). */
#define SIN_TIPO float

/* Para leer variables de texto se utiliza scanf, que lee solo una palabra. 
   Para leer una linea completa (es decir, incluyendo los espacios en blanco)
   se debe utilzar ges (ej, reemplazar scanf("%s",x) por gets(x)) pero 
   obliga a agregar un getchar() antes del gets si antes del mismo se leyó
   otra variable con scanf. */

/* El algoritmo contiene funciones que reciben argumentos por referencia.
   Cuando estos argumentos no se corresponden con arreglos, al llamar a la
   función el argumento actual debe ser un puntero, lo cual se logra 
   anteponiendo el operador & (a la variable que se pasa como argumento
   actual). En estos casos, la traducción automática falla, por lo que
   debe agregarlo manualmente donde sea necesario. */

// Declaraciones adelantadas de las funciones
float leer_positivo(SIN_TIPO msj);
SIN_TIPO leer_num(SIN_TIPO min, SIN_TIPO max, SIN_TIPO msj);
float porc(float cantidad, float precio);
float calc_cant(float cantidad, float precio);
char validar_cadena(SIN_TIPO dato);
void ingresar_datos(SIN_TIPO *num_sala, SIN_TIPO *codigo_peli, SIN_TIPO *asientos_disp, SIN_TIPO *entradas_vend);
void calc_estadist(SIN_TIPO asientos_disp, SIN_TIPO entradas_vend, SIN_TIPO *monto_sala, SIN_TIPO *porcentaje_sala);
void lista(SIN_TIPO num_sala, char *codigo_peli, SIN_TIPO asientos_disp, SIN_TIPO entradas_vend, SIN_TIPO monto_sala, SIN_TIPO porcentaje_sala);
void menu();

float leer_positivo(SIN_TIPO msj) {
	float nposit;
	do {
		printf("%s\n",msj);
		scanf("%s",nposit);
		if (!nposit>0) {
			printf("ERROR\n");
			printf("Ingrese un numero positivo\n");
			esperar(1*1000);
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
		}
	} while (nposit<0);
	return nposit;
}

SIN_TIPO leer_num(SIN_TIPO min, SIN_TIPO max, SIN_TIPO msj) {
	SIN_TIPO num_rang;
	do {
		printf("%s\n",msj);
		esperar(2*1000);
		printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
		num_rang = leer_positivo("Ingrese un numero para continuar ");
		if (!(num_rang>=min && num_rang<=max)) {
			printf("ERROR\n");
			printf(" El debe estar entre %s y %s\n",min,max);
		}
	} while (!((num_rang>=min && num_rang<=max)));
	return num_rang;
}

float porc(float cantidad, float precio) {
	float porcentaje;
	porcentaje = cantidad/precio*100;
	return porcentaje;
}

float calc_cant(float cantidad, float precio) {
	float canti_total;
	canti_total = cantidad*precio;
	return canti_total;
}

char validar_cadena(SIN_TIPO dato) {
	char text[MAX_STRLEN];
	do {
		printf("Ingrese %s\n",dato);
		scanf("%s",text);
		if (!(((strlen(text)==3 && (strcmp(subcadena(text,0,1),"A")==0 || strcmp(subcadena(text,0,1),"a")==0) || (strcmp(subcadena(text,0,1),"b")==0 || strcmp(subcadena(text,0,1),"B")==0) || (strcmp(subcadena(text,0,1),"c")==0 || strcmp(subcadena(text,0,1),"C")==0)) && ((strcmp(subcadena(text,1,2-1),"-")==0))) && ((strcmp(subcadena(text,2,3-2),"0")==0) || (strcmp(subcadena(text,2,3-2),"1")==0) || (strcmp(subcadena(text,2,3-2),"2")==0) || (strcmp(subcadena(text,2,3-2),"3")==0) || (strcmp(subcadena(text,2,3-2),"4")==0) || (strcmp(subcadena(text,2,3-2),"5")==0) || (strcmp(subcadena(text,2,3-2),"6")==0) || (strcmp(subcadena(text,2,3-2),"7")==0) || (strcmp(subcadena(text,2,3-2),"8")==0) || (strcmp(subcadena(text,2,3-2),"9")==0)))) {
			printf("Error\n");
			printf("La Entrada ingresada esta fuera de los parametros\n");
			printf("por favor ingrese una entrada tenga 3 caracteres, empiece en \n");
			printf("A, B o C, que este seguida de un guion ( - ) y\n");
			printf("que el numero este entre 0 y 9\n");
		}
	} while (!((((strlen(text)==3 && (strcmp(subcadena(text,0,1),"A")==0 || strcmp(subcadena(text,0,1),"a")==0) || (strcmp(subcadena(text,0,1),"b")==0 || strcmp(subcadena(text,0,1),"B")==0) || (strcmp(subcadena(text,0,1),"c")==0 || strcmp(subcadena(text,0,1),"C")==0)) && ((strcmp(subcadena(text,1,2-1),"-")==0))) && ((strcmp(subcadena(text,2,3-2),"0")==0) || (strcmp(subcadena(text,2,3-2),"1")==0) || (strcmp(subcadena(text,2,3-2),"2")==0) || (strcmp(subcadena(text,2,3-2),"3")==0) || (strcmp(subcadena(text,2,3-2),"4")==0) || (strcmp(subcadena(text,2,3-2),"5")==0) || (strcmp(subcadena(text,2,3-2),"6")==0) || (strcmp(subcadena(text,2,3-2),"7")==0) || (strcmp(subcadena(text,2,3-2),"8")==0) || (strcmp(subcadena(text,2,3-2),"9")==0)))));
	return *text;
}

void ingresar_datos(SIN_TIPO *num_sala, SIN_TIPO *codigo_peli, SIN_TIPO *asientos_disp, SIN_TIPO *entradas_vend) {
	printf("Datos de la sala\n");
	esperar(1*1000);
	printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
	(*num_sala) = leer_num(1,8,"Numeros de salas disponibles");
	(*codigo_peli) = validar_cadena("Codigo de pelicula");
	esperar(1*1000);
	printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
	printf("Asientos de la Sala\n");
	(*asientos_disp) = leer_num(60,150,"Cantidad de asientos disponibles");
	esperar(1*1000);
	printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
	(*entradas_vend) = leer_num(0,(*asientos_disp),"Cantidad de asientos vendidos");
}

void calc_estadist(SIN_TIPO asientos_disp, SIN_TIPO entradas_vend, SIN_TIPO *monto_sala, SIN_TIPO *porcentaje_sala) {
	(*monto_sala) = calc_cant(entradas_vend,3.5);
	(*porcentaje_sala) = porc(entradas_vend,asientos_disp);
}

void lista(SIN_TIPO num_sala, char *codigo_peli, SIN_TIPO asientos_disp, SIN_TIPO entradas_vend, SIN_TIPO monto_sala, SIN_TIPO porcentaje_sala) {
	printf("Datos de la Sala\n");
	printf("--------------------------------------------\n");
	printf("Numero de sala %s\n",num_sala);
	printf("Codigo de la Pelicula %s\n",mayusculas(codigo_peli));
	printf("Asientos Disponibles %s\n",asientos_disp);
	printf("Entradas Vendidas %s\n",entradas_vend);
	printf("Monto Generado por la sala: %s$\n",monto_sala);
	printf("Porcentaje de Ocupacion de la Sala: %s%\n",porcentaje_sala);
	printf("--------------------------------------------\n");
}

void menu() {
	int opc;
	do {
		printf("······Menu·····\n");
		printf("1. Ingresar Datos\n");
		printf("2. Calculos Estadisticos\n");
		printf("3. Mostrar Datos y Calculos\n");
		printf("4. Salir\n");
		printf("···············\n");
		printf("¿Cual Opcion Desea Escoger?\n");
		scanf("%i",&opc);
		switch ((opc)) {
		case 1:
			esperar(1*1000);
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			ingresar_datos(num_sala,codigo_peli,asientos_disp,entradas_vend);
			printf("\n");
			printf("Presione Cualquier Tecla para Continuar\n");
			getchar(); /* a diferencia del pseudocódigo, espera un Enter, no cualquier tecla */
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			break;
		case 2:
			esperar(1*1000);
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			printf("Realizando calculos\n");
			calc_estadist(asientos_disp,entradas_vend,monto_sala,porcentaje_sala);
			esperar(1*1000);
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			printf("Calculos realizado exitosamente\n");
			esperar(1*1000);
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			printf("\n");
			printf("Presione Cualquier Tecla para Continuar\n");
			getchar(); /* a diferencia del pseudocódigo, espera un Enter, no cualquier tecla */
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			break;
		case 3:
			esperar(1*1000);
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			lista(num_sala,codigo_peli,asientos_disp,entradas_vend,monto_sala,porcentaje_sala);
			printf("\n");
			printf("Presione Cualquier Tecla para Continuar\n");
			getchar(); /* a diferencia del pseudocódigo, espera un Enter, no cualquier tecla */
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			break;
		case 4:
			printf("Usted elgio salir del Sistema\n");
			printf("\n");
			printf("Presione Cualquier Tecla para Continuar\n");
			getchar(); /* a diferencia del pseudocódigo, espera un Enter, no cualquier tecla */
			printf("\n"); /* no hay forma directa de borrar la pantalla con C estandar */
			break;
		default:
			printf("ERROR\n");
			printf("Ingrese una Opcion Valida, por favor\n");
			printf("Revise las opcines disponebles \n");
		}
	} while ((opc!=4));
}

int main() {
	menu();
	return 0;
}


/* Algunas operaciones de cadenas de texto requieren cadenas auxiliares temporales. 
   Por ejemplo, la concatenación de cadenas. Como las cadenas son en realidad arreglos
   no hay forma simple de crear estos temporales dinámicamente y destruirlos cuando ya
   no sean necesarios. Si cada función que requiere un buffer auxiliar usa su propio
   buffer estático, entonces no se puede invocar a esa función dos veces en la misma
   expresión (porque ambas invocaciones retornarían un mismo buffer como resultado
   aunque sus argumentos sean diferentes, y además esto genera un comportamiento 
   indefinido según el estándar de C). Para salvar este problema, esta función define
   varios buffers auxiliares y los va entregando a las demás funciones a medida que
   estas los requieren, rotando cual entrega en orden. Entonces, una expresión puede
   requerir tantos buffers como MAX_BUFFERS indique sin que se generen problemas,
   y se evita utilizar memoria dinámica. */
#define MAX_BUFFERS 10
char *get_aux_buffer(double t) {
	static char buffers[MAX_BUFFERS][MAX_STRLEN];
	static int count = -1;
	count = count+1;
	if(count==MAX_BUFFERS) count = 0;
	return buffers[count];
}


void esperar(double t) {
	clock_t t0 = clock();
	double e = 0;
	do {
		e = 1000*double(clock()-t0)/CLOCKS_PER_SEC;
	} while (e<t);
}


char *mayusculas(const char *s) {
	char *buf = get_aux_buffer();
	for(unsigned int i=0;i<s.size();i++)
		buf[i] = toupper(s[i]);
	return buf;
}


char *subcadena(const char *s, int desde, int cuantos) {
	char *buf = get_aux_buffer();
	strncpy(buf,s+desde,cuantos);
	buf[cuantos] = '\0';
	return buf;
}

