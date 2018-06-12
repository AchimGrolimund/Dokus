<!-- TITLE: C++ Snippets -->
<!-- SUBTITLE: Sammlung nützlicher C++ Snippets -->

> Hier habe ich einige nützliche Snippets niedergeschrieben welche man immer mal wider gebrauchen kann.
{.is-info}

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



# Zeitmessungen

## HighResolutionClock

> Die **high_resolution_clock** ist etwas genauer als die normale Zeitmessung
>
> {.is-info}

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

# GUI erstellen mit MainWindow

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

