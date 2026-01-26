#include <stdio.h>
#include <inttypes.h>

int main()
{
    int n = 12;
    int64_t current_number = 0, next_number = 1, prev_number;

    do {
        printf("%20lld\n", current_number);
        prev_number = current_number;
        current_number = next_number;
        next_number = prev_number + current_number;
        n--;
    }
    while(n != 0);
}