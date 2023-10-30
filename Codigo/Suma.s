'''

Codigo donde se suman dos numeros en C y en ensamblador

int main() {
    int a = 5;
    int b = 7;
    int result = a + b;
    return result;
}
'''

.global main
.section .text
main:
    @ Declarar las variables
    mov r0, #5      @ Cargar el valor de 'a' en el registro r0
    mov r1, #7      @ Cargar el valor de 'b' en el registro r1

    @ Sumar los valores y almacenar el resultado en r2
    add r2, r0, r1  @ r2 = r0 + r1

    @ Salir de la función y devolver el resultado
    mov r7, #1      @ Código de la llamada al sistema para salir (1)
    swi 0           @ Realizar la llamada al sistema
