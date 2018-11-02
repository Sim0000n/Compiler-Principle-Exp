int a,b,c;
float m,n;
int fibo(int a, int b){
    a += b;
    if(a==1 || a==2){
        return 1;
    }
    return fibo(a) + fibo(a - 2);
}
int main(){
    int m,n,i;
    i = 1;
    while(i <= m){
        n = fibo(i);
        write(n);
    }
    return 1;
}
