
int x[4];
int a,b,c;
float m,n;
int fibo(int a[2], int b){
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
        i++;
	i = x[3] ;
    }
    return 1;
}
//hello there
/*   impossible1
 	xixi   */
