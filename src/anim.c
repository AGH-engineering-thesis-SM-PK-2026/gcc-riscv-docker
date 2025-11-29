#include <stdint.h>

#include "sysdev.h"

void main(void) {
    for (;;) {
        gpioa->out = 0b00010000;
        gpioa->out = 0b00100000;
        gpioa->out = 0b01000000;
        gpioa->out = 0b10000000;
    }
}