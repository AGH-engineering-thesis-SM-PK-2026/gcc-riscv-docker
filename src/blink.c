#include <stdint.h>

#include "sysdev.h"


void delay(uint32_t ms) {
    uint32_t i;
    for (i = 0; i < (ms<<7); i++);
}

void main(void) {
    for (;;) {
        delay(500);
        gpioa->out = 0b10101010;
        delay(500);
        gpioa->out = 0b01010101;
    }
}