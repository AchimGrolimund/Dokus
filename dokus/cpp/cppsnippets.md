

<!-- TITLE: C++ Snippets -->
<!-- SUBTITLE: Sammlung nützlicher C++ Snippets -->

> Hier habe ich einige nützliche Snippets niedergeschrieben welche man immer mal wider gebrauchen kann.
> {.is-info}

> Tipp: https://www.geeksforgeeks.org/top-algorithms-and-data-structures-for-competitive-programming/
> {.is-info}

# New C++ 11 / 14 / 17
## For

``` cpp
int main() {
    String myString = "HELLO";
    Vector<char> myVec={};
    
    for(auto x : myString){
        myVec.pushBack(x);
        cout << x << endl;
    }
    return;
}
```
## Connect

``` cpp
connect(sender, &Sender::valueChanged,
        receiver, &Receiver::updateValue );
```
### Example
``` cpp
	QObject::connect(this, &paintWidget::signalOpenSettingsWindow,
                     h, &EventHandler::slotOpenSettingsWindow);
```

# Allg. Funktionen

> Nützliches #Include ist #include <bits/stdc++.h>
>
> {.is-info}

## isPrime

``` cpp
bool isPrime(int number){
    for(int i = 2; i < number / 2; i++){
        if(number % i == 0) return false;
    }
    return true;
}
```
Performanter bei hohen Zahlen
``` cpp
bool isPrime(long long n){
  if(n == 2) return true;
  if(n == 3) return true;
  if(n % 2 == 0) return false;
  if(n % 3 == 0) return false;
  int i = 5;
  int w = 2;
  while(i * i <= n){
       if(n % i == 0) return false;
       i += w;
       w = 6 - w;
  }
  return true;
}
```

## Fibonacci

``` cpp
//<--Fibonacci Rekursive-->
int fibRe(int n) {
    if (n == 1 || n == 2) return 1;
    else return fibRe(n - 1) + fibRe(n - 2);
}

//<--Fibonacci Iterativ-->
int fibIt(int n) {
    int first, second, temp;
    first = 0;
    second = 1;
    for (int i = 0; i < n; ++i) {
        temp = first + second;
        second = first;
        first = temp;
    }
    return first;
}
```



## GGT berechnen

``` cpp
//<-- GGT Berechnen -->
int ggt(int a, int b){
	while (a != b) {
		if (a>b) {
			a-=b;
		}else{
			b-=a;
		}
	}
	return  a;
}

//<-- GGT Berechnen Rekursiv -->
int ggtRek(int a, int b){
	if(b==0) return a;
	return ggtRek(b,a%b);
}
```

## KGV berechnen

``` cpp
int kgv(int zahl1, int zahl2)
{
   return (zahl1*zahl2)/ggtRek(zahl1, zahl2);
}

//<-- GGT Berechnen Rekursiv -->
int ggtRek(int a, int b){
	if(b==0) return a;
	return ggtRek(b,a%b);
}
```

## Permutationen
```cpp
// next_permutation example
#include <iostream>     // std::cout
#include <algorithm>    // std::next_permutation, std::sort

int main () {
  int myints[] = {1,2,3};

  std::sort (myints,myints+3);

  std::cout << "The 3! possible permutations with 3 elements:\n";
  do {
    std::cout << myints[0] << ' ' << myints[1] << ' ' << myints[2] << '\n';
  } while ( std::next_permutation(myints,myints+3) );	// String.begin, String.end

  std::cout << "After loop: " << myints[0] << ' ' << myints[1] << ' ' << myints[2] << '\n';

  return 0;
```
http://www.cplusplus.com/reference/algorithm/next_permutation/


# Konvertierung
## Strings

### Wenn es nur Zahlen sind.
Result = 4324
``` cpp
string str("4324");
int result = atoi(str.c_str());
```
### Zahl zu String
``` cpp
string result = to_string(32132312321);
```
### Gros Kleinschreibung (char)
``` cpp
char c('C'); 
c = tolower(c);
c = toupper(c);
```
### String in Zahl konvertieren
result = 3235
``` cpp
string str("3234Test");
int result = atoi(str.c_str());
```
### Wenn String nicht mit Zahl anfängt
Resultat 28 (Punkt wird nicht als 'Komma' gerechnet
``` cpp
string str("Am 28.06 ist die Schule feritg");
int index(0);
// Erhöt bis zuer ersten Zahl
while(index < str.length() && !isdigit(str[index])) index++; 
// Substring von ersten Zahl bis Ende oder erster Buchstabe
int result = atoi(str.substr(index).c_str());
```

# Zeitmessungen

## HighResolutionClock

``` cpp
#include <chrono>
#include <ctime>
...
auto start = high_resolution_clock::now();
	// Code Here
auto ende  = high_resolution_clock::now();
	cout << endl << "Zeit: " << std::chrono::duration_cast<nanoseconds>(ende-start).count() << " ns"<<endl;
	cout << "---------------------------------------"<<endl;
```
> Die **high_resolution_clock** ist etwas genauer als die normale Zeitmessung
>
> {.is-info}

## Normale Uhr
``` cpp
#include <time.h>
clock_t start, stop;
start = clock();
// Your Code
stop = clock();
double duration = (double)(stop-start)/CLOCKS_PER_SEC;
```

# GUI

## GUI erstellen mit MainWindow

``` cpp
MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent) {
	...
	frmLayout->addWidget(lblTitel);
	frmLayout->addWidget(ledInput);
	frmLayout->addRow(btnAdd, btnClear);
	//--------------------------------------------------
    //Wird benötigt wen man mit MainWindow arbeitet
	QWidget *widget = new QWidget();
	widget->setLayout(frmLayout);
	setCentralWidget(widget);
}
```

