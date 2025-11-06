/* Escriba un programa en lenguaje de programación C que permita el ingreso
de un valor expresado en notación decimal ±eee.ffff y lo convierta a representación en punto
fijo de 16 bits Q(7 , 8).El programa debe validar la entrada y determinar si el número ingresado está dentro del rango
representable.La salida debe expresarse en Hexadecimal(0xHHHH) , En ninguno de los casos se pueden utilizar variables de tipo float o double ni
funciones incluidas en math.h o float.h
 */


#include <stdio.h>
#include <stdint.h>
#define FRAC_BITS 8  
#define ESCALA (1 << FRAC_BITS) // 256

void imprimirBinarioCA2(int16_t numero){
    printf("Numero en binario (CA2): ");
    for (int i = 15; i >= 0; i--){
        printf("%d" , (numero >> i) & 1);
        if (i == 8){
            printf(",");
        }
    }
    printf("\n");
}

int main(){
    char entrada[50];
    int es_negativo = 0;
    int16_t entera;
    uint16_t fraccionaria;
    int16_t numero;

    while (1){
        printf("Ingrese un numero decimal en formato eee.ffff (con o sin signo):\n");
        scanf("%s" , entrada);

        // Comprueba si es un número negativo
        if (entrada[0] == '-'){
            es_negativo = 1;
            // Procesa el resto de la cadena sin el signo negativo
            if (sscanf(entrada + 1 , "%hd.%hu" , &entera , &fraccionaria) != 2){
                printf("[!] Entrada invalida.\n");
                return 1;
            }
        }
        else{
            if (sscanf(entrada , "%hd.%hu" , &entera , &fraccionaria) != 2){
                printf("[!] Entrada invalida.\n");
                return 1;
            }
        }

        // Validar la parte fraccionaria
        if (fraccionaria >= 10000){
            printf("[!] Parte fraccionaria invalida. Debe tener hasta 4 digitos.\n");
            continue;
        }

        // Normalizar la parte fraccionaria a 4 dígitos decimales
        while (fraccionaria < 1000 && fraccionaria != 0){
            fraccionaria *= 10;
        }

        // Imprime el número leído incluyendo el signo negativo si corresponde
        printf("Numero leido: %s%d.%u\n" , es_negativo ? "-" : "" , entera , fraccionaria);

        // Validar que el número esté en el rango representable
        if (entera < -128 || entera > 127 || (entera == 127 && fraccionaria > 9960)){
            printf("[!] Numero fuera de rango (-128 a 127.9960).\n");
            continue;
        }

        // Convertir a punto fijo
        fraccionaria = (fraccionaria * ESCALA) / 10000; // Escalar la parte fraccionaria a 8 bits



        // Combinar parte entera y fraccionaria
        if (es_negativo){
            // Es un número negativo
            numero = -(((int8_t) entera << FRAC_BITS) | (fraccionaria & 0xFF));
        }
        else{
            // Es un número positivo o cero
            numero = ((int8_t) entera << FRAC_BITS) | (fraccionaria & 0xFF);
        }


        // Imprimir el resultado
        imprimirBinarioCA2(numero);
        printf("Numero en Q(7,8): 0x%04X\n" , (uint16_t) numero);  // Imprime el resultado en formato hexadecimal

        // Preguntar si desea continuar
        char continuar;
        es_negativo = 0; // Reiniciar la variable para el siguiente número
        printf("Desea ingresar otro numero? (s/n): ");
        scanf(" %c" , &continuar);
        if (continuar != 's' && continuar != 'S'){
            break;
        }
    }

    return 0;
}

