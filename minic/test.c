int a,b,c;
float m,n;
int fibo(int a, int b){
    if(a==1 || a==2){
        return 1;
    }
    return fibo(a-1) + fibo(a - 2);
}
int main(){
    int m,n,i;
    m = read();
    i = 1;
    while(i <= m){
        n = fibo(i);
        write(n);
        i++;
	i = i % i ;
    }
    return 1;
}
//hello there
/*   impossible1
 	xixi   */
