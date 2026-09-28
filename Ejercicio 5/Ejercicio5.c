int main() {
    int arreglo[6] = {12, 45, 7, 89, 23, 5};
    int max = arreglo[0];
    for (int i = 1; i < 6; i++) {
        if (arreglo[i] > max) {
            max = arreglo[i];
        }
    }
    
    return max;
}