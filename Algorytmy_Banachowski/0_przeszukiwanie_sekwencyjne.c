#include <stdio.h>
int przeszukiwanie_sekwencyjne(int L[], int n, int a); 
int arr[] = {0,1,2,3,4,5,7};
int n = sizeof(arr) / sizeof(int); // 8*6 / 8 bajtow 
int main() {
    int result = przeszukiwanie_sekwencyjne(arr, n, 2);
    printf("Wynik funkcji to: %d\n", result);
    return 0;
}

int przeszukiwanie_sekwencyjne(int L[], int n, int a) {
    for(int i=0; i<n; i++) {
        if(L[i] == a) {
            return 1;
        }
    }

    return 0;
}
