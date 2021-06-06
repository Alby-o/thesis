int main() {
    int count = 0;
    // here count is always zero
    for(int i = 0; i < count; i++) {
        __builtin_annot("try  loop bound: %1;", count);
    }
    
    return 0;
}