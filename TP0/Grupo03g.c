/* Escriba otro programa que dado un número expresado en punto fijo de 16
bits Q(7 , 8) exprese el valor decimal equivalente eee.ffff.La entrada debe ser
un numero hexadecimal expresado en la forma 0xHHHH que debe ser
validada. */
#include <stdio.h>
#include <stdint.h>
#define FRAC_BITS 8
#define ESCALA (1 << FRAC_BITS) // 256


void imprimirHexaEnBinario(uint16_t numeroHex){
    printf("Numero en binario: ");
    for (int i = 15; i >= 0; i--){
        printf("%d" , (numeroHex >> i) & 1);
        if (i == 8){
            printf(",");
        }
    }
    printf("\n");
}

int main(){
    uint16_t numeroHex;
    int16_t entero;
    uint16_t fraccionaria;

    while (1){
        printf("Ingrese un numero en formato hexadecimal (0xHHHH):\n");

        if (scanf("0x%4hx" , &numeroHex) != 1){
            while (getchar() != '\n');
            continue;
            printf("[!] Entrada invalida.\n");
            // Limpiar el buffer de entrada

        }

        // Validar que el número esté dentro del rango representable en Q(7,8)
        if (numeroHex > 0x7FFF && numeroHex < 0x8000){
            printf("[!] Numero fuera de rango (0xFF80 a 0x7FFF).\n");
            return 2;
        }

        // Convertir a decimal
        entero = (int8_t) (numeroHex >> 8); // Extraer la parte entera (8 bits con signo)
        fraccionaria = numeroHex & 0x00FF; // Extraer la parte fraccionaria (8 bits)

        // Normalizar la parte fraccionaria a 4 dígitos decimales
        fraccionaria = (fraccionaria * 10000) / ESCALA; // Escalar a 4 dígitos decimales
        printf("Numero leido: 0x%04X\n" , numeroHex); // Imprimir el número leído en formato hexadecimal
        imprimirHexaEnBinario(numeroHex); // Imprimir el número en binarioS
        // Imprimir el resultado en formato decimal
        printf("Numero en decimal: %d.%04d\n" , entero , fraccionaria);

    }

    return 0;
}