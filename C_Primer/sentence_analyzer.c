#include <stdio.h>
#include <string.h>
int main() {
    char words[20][20];
    printf("Enter a sentence: ");
    for(int i=0; i<5; i++) {
        scanf("%s", words[i]);
        if(i == 0) {
            printf("\nWord Analysis\n");
        }
        printf("%d. %s: %zd characters\n", i+1, words[i], strlen(words[i]));
        if(words[i] == NULL) {

            break; 
        }
    }








    return 0;
}