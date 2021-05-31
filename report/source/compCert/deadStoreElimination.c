int deadStore(int i, int n) {
    int key = 0xabcd;
    __builtin_ais_annot("%here L(%e1) = high", key);

    // do some work
    int result = 0;
    while (i > n) {
        result += key;
        i--;
    }

    // clear out our secret key
    key = 0;
    return i + n;
}

int main(int argc, char *argv[]) {
    deadStore(argc, 2);
}