#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("Running import_to_ollama.sh...\n");

    // Execute the script using Git Bash
    int status = system("bash import_to_ollama.sh");

    if (status == 0) {
        printf("Script executed successfully.\n");
    } else {
        printf("Error executing script. Exit status: %d\n", status);
    }

    return 0;
}
