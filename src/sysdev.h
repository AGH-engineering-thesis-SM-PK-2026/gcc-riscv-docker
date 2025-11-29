#ifndef _DEV_H_
#define _DEV_H_

#define DEV_GPIOA  0x00000010
#define DEV_MEM    0x00001000
#define DEV_MEMEND 0x00001fff

struct gpio {
    uint32_t out; 
};

static volatile struct gpio * const gpioa = (struct gpio *) DEV_GPIOA;
uint32_t * const mem = (uint32_t *) DEV_MEM;

#endif /* _DEV_H_ */