import 'dart:io';
import 'dart:math';

bool primeNumber(int n) {
  if (n < 2) {
    return false;
  }
  for (int i = 2; i < n/2 + 1; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

int getNextPrime(int n, int m){
  int number = n > m ? n : m;
  for(int i = number+1; i < 2*number; i++){
    if(primeNumber(i)){
      return i;
    }
  }
  return 0;
}

void fx(int x, List<int> a, int k, int m, int p){
  int y = m;
  for(int i = 0; i< k-1; i++){
    y += (a[i]* pow(x,i+1)).round(); 
  }
  y = y % p;
  print("($x, $y)");
}

void main(){
  stdout.write("Enter message:");
  int m = int.parse(stdin.readLineSync()!);
  stdout.write("Enter n:");
  int n = int.parse(stdin.readLineSync()!);
  stdout.write("Enter k:");
  int k = int.parse(stdin.readLineSync()!);
  List<int> a = [];
  int p = getNextPrime(n,m);
  for(int i =0; i<k-1; i++){
    a.add(Random().nextInt(p-k) + k);
  }
  print("P: $p");
  print("Secret:");
  for(int i = 1; i<=n; i++){
    fx(i, a, k, m, p);
  }

}
