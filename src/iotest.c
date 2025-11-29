#include <stdint.h>

#include "sysdev.h"

void main(void) {
    // for (;;) {
        register uint32_t pc = 0;
        uint32_t i;

        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b10101010;
        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b01010101;

        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b10101010;
        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b01010101;

        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b10101010;
        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b01010101;

        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b10101010;
        pc++;
        for (i = 0; i < 2<<14; i++);
        gpioa->out = 0b01010101;

        pc++;
        gpioa->out = pc;
        for (;;);
    // }
}