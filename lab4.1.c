#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
    printf("| x |   Z   |\n");
    for (int x = 0; x <= 180; x += 5){
        double Z = sin(pow(x,2)) - cos(pow(x,2));
        printf("|%3d|%7.3lf|\n", x, Z);
    }
    return 0;
}