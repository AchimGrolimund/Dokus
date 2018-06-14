<!-- TITLE: QT GUI -->
<!-- SUBTITLE: all about QT GUI programming -->


## Disigne Palette (Simpel)

``` cpp
#include "paintwidget.h"
#include <QApplication>
#include <QFile>
#include <QStyleFactory>

int main(int argc, char *argv[]) {
	QApplication a(argc, argv);
	paintWidget w;	
	qApp->setStyle(QStyleFactory::create("fusion"));
	QPalette palette;
	palette.setColor(QPalette::Window, QColor(53, 53, 53));
	palette.setColor(QPalette::WindowText, Qt::white);
	palette.setColor(QPalette::Base, QColor(15, 15, 15));
	palette.setColor(QPalette::AlternateBase, QColor(53, 53, 53));
	palette.setColor(QPalette::ToolTipBase, Qt::white);
	palette.setColor(QPalette::ToolTipText, Qt::white);
	palette.setColor(QPalette::Text, Qt::white);
	palette.setColor(QPalette::Button, QColor(53, 53, 53));
	palette.setColor(QPalette::ButtonText, Qt::white);
	palette.setColor(QPalette::BrightText, Qt::red);
	palette.setColor(QPalette::Highlight, QColor(142, 45, 197).lighter());
	palette.setColor(QPalette::HighlightedText, Qt::black);
	qApp->setPalette(palette);
    w.show();
	return a.exec();
}
```



## QRC erstellen und QSS laden

Damit wir eine QSS Datei aus den Resourcen laden können, müssen wir als erstes die Resourcendatei erstellen (.qrc).

Anschliessen muss man einen Präfix erstellen, in meinemfalle **/StyleSheet** und diesem Präfix die *.qss Datei zuweisen.

dies sieht dan folgendermassen aus:

![Qt Gui Qss Res](/uploads/images/qt-gui-qss-res.png "Qt Gui Qss Res")

Note: Bei jeder änderung in der qss datei, **muss** das Projekt neu erstellt werden!



## Design Theme aus *.qss laden

*main.cpp*

``` cpp
#include "paintwidget.h"
#include <QApplication>
#include <QFile>
#include <QStyleFactory>

int main(int argc, char *argv[]) {
	QApplication a(argc, argv);
	paintWidget w;
    //---- Lade QSS in einen QString
	QFile file(":/StyleSheet/style.qss");
	file.open(QFile::ReadOnly);
	QString styleSheet = QLatin1String(file.readAll());
    //---- Setze das geladene QSS als Application StyleSheet
	a.setStyleSheet(styleSheet);
    
	w.show();
	return a.exec();
}
```

note: Wen man an dem QSS eine änderung vornimt, so **muss** man das Projekt **neu erstellen**. ansonsten werden die änderungen nicht angezeigt.
