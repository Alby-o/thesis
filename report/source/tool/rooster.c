int rooster;
int drake;
int goose;

int fun(int a, int b, int c) {
    // annotation: CRITICAL COMMENT
    static int count = 0;
    int sum = a + b + c;
    if (sum < 0) {
        return sum;
    }
    if (a < b && b < c) {
        while (a != b) {
            a++;
            count++;
            while (b != c) {
                c--;
                count++;
            }
        }
    }
    return count;
}

int main(void) {
    // annotation: L(var(goose)) = Medium
    // annotation: EXCEPTIONAL
    rooster = 1;
    drake = 5;
    goose = 10;int result;
    result = fun(rooster,drake,goose);
    return 0;
}
