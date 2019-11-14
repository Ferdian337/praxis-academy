import 'dart:math';

void main(){
  var rand = new Random(); //membuat array
  var A = new List(10);
  for (int i=0; i<10; i++){
    A[i] = (rand.nextInt(100));
  }
  print(A);
// var A = new List(10); //Membuat Array
//   for(int i=0; i<10; i++){
//     A[i] = i*10;
//   }
  //Maximum and Minimum Values
  MinMax(A);
  //Maximum and Minimum differences
  MaxDifference(A);
  //Maximum between given indexes
  MaximumBetweenGivenIndexes(A, 10, 9);

  // Insertion Sort
  for (int i = 1; i<A.length-1; i++){
    var key = A[i];
    var j = i;
    while (j>0 && A[j] > key){
      A[j] = A[j-1];
      j = j-1;
    }
    A[j] = key;
  }
  // Backward Insertion Sort
  for (int i = A.length-2; i>0; i-- ){
    var key = A[i];
    var j = i + 1;
    while (j < A.length-1 && key > A[j]){
      A[j-1] = A[j];
      j = j+1;
    }
  A[j-1] = key;
  }

}

void MinMax(a){
  var min = a[0];
  var max = a[0];
  for (int i=0; i<a.length ;i++){
    if (a[i] < min){
      min = a[i];
    }
    if (a[i] > max){
      max = a[i];
    }
  } 
  print("$min $max");
} 

void MaxDifference(a){
  var maxDiff = a[1] - a[0];
  var min = a[0];
  for (int i=0; i<a.length; i++){
    if (a[i] - min > maxDiff){
      maxDiff = a[i] - min;
    }
    if (a[i] < min){
      min = a[i];
    }
  }
  print(maxDiff);
}

void MaximumBetweenGivenIndexes(a, int p, int r){
  int max = p;
  for (int i=p+1; i<r; i++){
    if (a[i] > a[max]){
        max = i;
    }
  }
  print(max);
}