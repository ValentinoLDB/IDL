#include <stdio.h>
#include <stdint.h>
#define FRAC_BITS_M 15
#define ESCALA_M (1 << FRAC_BITS_M) // 32768
#define FRAC_BITS_B 8
#define ESCALA_B (1 << FRAC_BITS_B) // 256


void imprimirBinario(int32_t numero , int bits , int f){
    printf("Numero en binario (CA2): ");
    int desfasaje = 4 - (bits - f) % 4;
    for (int i = bits - 1; i >= 0; i--){
        printf("%d" , (numero >> i) & 1);
        if ((i - desfasaje) % 4 == 0 && i != 0 && i != f){
            printf(" ");
        }
        if (i == f){
            printf(", ");
            desfasaje = (f % 4) - 4;
        }
    }
    printf("\n");
}


int16_t leer_m(){
    char entrada[50];
    int es_negativo = 0;
    int32_t m_Entera;
    uint32_t m_fraccionaria;

    printf("Ingrese el valor de m (pendiente): ");
    scanf("%s" , entrada);

    // Comprueba si es un número negativo
    if (entrada[0] == '-'){
        es_negativo = 1;
        // Procesa el resto de la cadena sin el signo negativo
        if (sscanf(entrada + 1 , "%d.%u" , &m_Entera , &m_fraccionaria) != 2){
            printf("[!] Entrada invalida.\n");
            return 1;
        }
    }
    else{
        if (sscanf(entrada , "%d.%u" , &m_Entera , &m_fraccionaria) != 2){
            printf("[!] Entrada invalida.\n");
            return 1;
        }
    }

    // Imprime el número leído incluyendo el signo negativo si corresponde
    printf("Numero leido: %s%d.%u\n" , es_negativo ? "-" : "" , m_Entera , m_fraccionaria);

    // Validar la parte fraccionaria
    if (m_fraccionaria >= 100000){
        printf("[!] Parte fraccionaria invalida. Debe tener hasta 5 digitos.\n");
        return 1;
    }

    // Normalizar a 5 dígitos decimales
    while (m_fraccionaria < 10000 && m_fraccionaria != 0){
        m_fraccionaria *= 10;
    }

    // Validar que el número esté en el rango representable
    // Si es negativo, tratamos m_Entera como positivo para la validación
    if ((es_negativo && (m_Entera > 1 || (m_Entera == 1 && m_fraccionaria != 0))) ||
        (!es_negativo && m_Entera > 0)){
        printf("[!] Numero fuera de rango (-1.00000 a 0.99999).\n");
        return 1;
    }

    // Convertir a punto fijo
    int16_t m;
    m_fraccionaria = (m_fraccionaria * ESCALA_M) / 100000; // Escalar la parte fraccionaria a 15 bits

    if (es_negativo){
        if (m_Entera == 0){
            // Caso especial para -0.fraccion
            m = -(int16_t) m_fraccionaria; // Aplicar directamente complemento a 2
        }
        else{
            // Es un número negativo normal (como -1.xxx)
            m = (m_Entera << FRAC_BITS_M) | (m_fraccionaria & 0x7FFF);
        }
    }
    else{
        // Número positivo o cero
        m = (m_Entera << FRAC_BITS_M) | (m_fraccionaria & 0x7FFF);
    }



    // Imprimir el resultado
    imprimirBinario(m , 16 , 15);
    printf("m en hexadecimal: 0x%04X\n" , (uint16_t) m);

    return m;
}


//Q(7,8)
int16_t leer_b(){
    char entrada[50];
    int es_negativo = 0;
    int16_t b_entera;
    uint16_t b_fraccionaria;

    printf("Ingrese el valor de b (ordenada al origen): ");
    scanf("%s" , entrada);

    // Comprueba si es un número negativo
    if (entrada[0] == '-'){
        es_negativo = 1;
        // Procesa el resto de la cadena sin el signo negativo
        if (sscanf(entrada + 1 , "%hd.%hu" , &b_entera , &b_fraccionaria) != 2){
            printf("[!] Entrada invalida.\n");
            return 1;
        }
    }
    else{
        if (sscanf(entrada , "%hd.%hu" , &b_entera , &b_fraccionaria) != 2){
            printf("[!] Entrada invalida.\n");
            return 1;
        }
    }

    // Imprime el número leído incluyendo el signo negativo si corresponde
    printf("Numero leido: %s%hd.%hu\n" , es_negativo ? "-" : "" , b_entera , b_fraccionaria);

    // Validar la parte fraccionaria
    if (b_fraccionaria >= 10000){
        printf("[!] Parte fraccionaria invalida. Debe tener hasta 4 digitos.\n");
        return 1;
    }

    // Normalizar la parte fraccionaria a 4 dígitos decimales
    while (b_fraccionaria < 1000 && b_fraccionaria != 0){
        b_fraccionaria *= 10;
    }

    // Validar que el número esté en el rango representable
    if ((es_negativo && b_entera < -128) || (!es_negativo && (b_entera > 127 || (b_entera == 127 && b_fraccionaria > 9960)))){
        printf("[!] Numero fuera de rango (-128 a 127.9960).\n");
        return 1;
    }

    // Convertir a punto fijo
    b_fraccionaria = (b_fraccionaria * ESCALA_B) / 10000; // Escalar la parte fraccionaria a 8 bits
    int16_t b;

    if (es_negativo){
        // Es un número negativo
        b = -(((int16_t) b_entera << FRAC_BITS_B) | (b_fraccionaria & 0xFF));
    }
    else{
        // Es un número positivo o cero
        b = ((int16_t) b_entera << FRAC_BITS_B) | (b_fraccionaria & 0xFF);
    }

    // Imprimir el resultado
    imprimirBinario(b , 16 , 8);
    printf("b en hexadecimal: 0x%04X\n" , (uint16_t) b);

    return b;
}


int32_t leer_x(){
    char entrada[50];
    int es_negativo = 0;
    int32_t x_entera;
    uint32_t x_fraccionaria;

    printf("Ingrese el valor de x: ");
    scanf("%s" , entrada);

    // Comprueba si es un número negativo
    if (entrada[0] == '-'){
        es_negativo = 1;
        // Procesa el resto de la cadena sin el signo negativo
        if (sscanf(entrada + 1 , "%d.%u" , &x_entera , &x_fraccionaria) != 2){
            printf("[!] Entrada invalida.\n");
            return 1;
        }
    }
    else{
        if (sscanf(entrada , "%d.%u" , &x_entera , &x_fraccionaria) != 2){
            printf("[!] Entrada invalida.\n");
            return 1;
        }
    }

    // Imprime el número leído incluyendo el signo negativo si corresponde
    printf("Numero leido: %s%d.%u\n" , es_negativo ? "-" : "" , x_entera , x_fraccionaria);

    // Validar la parte fraccionaria
    if (x_fraccionaria >= 100000){
        printf("[!] Parte fraccionaria invalida. Debe tener hasta 5 digitos.\n");
        return 1;
    }

    // Normalizar a 5 dígitos decimales
    while (x_fraccionaria < 10000 && x_fraccionaria != 0){
        x_fraccionaria *= 10;
    }

    // Validar que el número esté en el rango representable
    if ((es_negativo && (x_entera > 65408 || (x_entera == 65408 && x_fraccionaria > 388)) ||
            (!es_negativo && (x_entera > 65408 || (x_entera == 65408 && x_fraccionaria != 0))))){
        printf("[!] Numero fuera de rango (-65408.00388 a 65408.00000).\n");
        return 1;
    }

    // Convertir a punto fijo
    x_fraccionaria = (x_fraccionaria * ESCALA_M) / 100000; // Escalar la parte fraccionaria a 15 bits
    
    int32_t x;

    if (es_negativo){
        // Es un número negativo
        x = -(((int32_t) x_entera << FRAC_BITS_M) | (x_fraccionaria & 0x7FFF));
    }
    else{
        // Es un número positivo o cero
        x = ((int32_t) x_entera << FRAC_BITS_M) | (x_fraccionaria & 0x7FFF);
    }

    // Imprimir el resultado
    imprimirBinario(x , 32 , 15);
    printf("x en hexadecimal: 0x%08X\n" , (uint32_t) x);

    return x;
}

int main(){
    while (1){
        // Leer los valores de m, b y x
        int16_t m = leer_m(); // Q(0,15)
        int16_t b = leer_b(); // Q(7,8)
        int32_t x = leer_x(); // Q(16,15)

        // Ajustar b a Q(16,15)
        int32_t b_nueva = b << 7; // Desplazar b 7 bits a la izquierda
        // Multiplicar m y x
        int32_t m_nueva = (int32_t) m; // Ajustar m a Q(16,15) para poder multiplicarlo con x
        int64_t m_x = (int64_t) m * x; // Resultado en Q32,30)
        // Ajustar el resultado de la multiplicación a Q(16,15)
        int32_t m_x_ajustado = m_x >> 15;
        // Calcular y
        int32_t y = m_x_ajustado + b_nueva;
        
        // Mostrar el resultado en hexadecimal
        printf("y en hexadecimal: 0x%08X\n" , (uint32_t) y);
        imprimirBinario(y , 32 , 15);
        
        
        int32_t parte_entera = y >> 15;
        int es_negativo = 0;
        if (parte_entera < 0) {
            es_negativo = 1;
            parte_entera = -parte_entera - 1;
        }
        uint32_t parte_fraccionaria = ((y < 0 ? -y : y) & 0x7FFF) * 100000 / (1 << 15);
        printf("y en decimal: %s%u.%05u\n", es_negativo ? ")" : "", parte_entera, parte_fraccionaria);
    }
    return 0;
}