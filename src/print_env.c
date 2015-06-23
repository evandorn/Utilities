//
//  print_env.c
//   This program prints the values of all enviroment variable strings.
//
//  Created by Evan Dorn on 6/23/15.
//

#include <stdio.h>

int main(int argc, char *argv[], char *envp[]) {
    
    int i;
    
    for(i = 0; envp[i] != (char *)0; i++) {
        printf("%s\n", envp[i]);
    }
}
