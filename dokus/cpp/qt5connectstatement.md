<!-- TITLE: New Qt5 connect statement -->
<!-- SUBTITLE: Qt5 brings a new connect statement -->

# Synthax
## Alt
``` cpp
connect(sender, SIGNAL(valueChanged(QString,QString)),
        receiver, SLOT(updateValue(QString)) );
```
### Nachteile
* No compile time check: All the checks are done at run-time by parsing the strings. That means if you do a typo in the name of the signal or the slot, it will compile but the connection will not be made, and you will only notice a warning in the standard output.
* Since it operates on the strings, the type names of the slot must match exactly the ones of the signal. And they also need to be the same in the header and in the connect statement. This means it won't work nicely if you want to use `typedef` or namespaces
> Quelle: [wobog.com](https://woboq.com/blog/new-signals-slots-syntax-in-qt5.html)

## Neu

In the upcoming Qt5, an alternative syntax exist. The former syntax will still work. But you can now also use this new way of connecting your signals to your slots:

``` cpp
connect(sender, &Sender::valueChanged,
        receiver, &Receiver::updateValue );
```
Which one is the more beautiful is a matter of taste. One can quickly get used to the new syntax.
So apart from the aesthetic point of view, let us go over some of the things that it brings us:
### Compile-time checking
You will get a compiler error if you misspelled the signal or slot name, or if the arguments of your slot do not match those from the signal.
This might save you some time while you are doing some re-factoring and change the name or arguments of signals or slots.

An effort has been made, using `static_assert` to get nice compile errors if the arguments do not match or of you miss a `Q_OBJECT`

### Arguments automatic type conversion

Not only you can now use `typedef` or namespaces properly, but you can also connect signals to slots that take arguments of different types if an implicit conversion is possible

In the following example, we connect a signal that has a `QString` as a parameter to a slot that takes a `QVariant`. It works because `QVariant` has an implicit constructor that takes a `QString`

``` cpp
class Test : public QObject
{ Q_OBJECT
public:
    Test() {
        connect(this, &Test::someSignal, this, &Test::someSlot);
    }
signals:
    void someSignal(const QString &);
public:
    void someSlot(const QVariant &);
};
```

### Connecting to any function

As you might have seen in the previous example, the slot was just declared as `public` and not as `slot`. Qt will indeed call directly the function pointer of the slot, and will not need `moc` introspection anymore. (It still needs it for the signal)

But what we can also do is connecting to any function or functor:

``` cpp
static void someFunction() {
    qDebug() << "pressed";
}
// ... somewhere else
    QObject::connect(button, &QPushButton::clicked, someFunction);
```

### C++11 lambda expressions

Everything documented here works with the plain old C++98. But if you use compiler that supports C++11, I really recommend you to use some of the language's new features. Lambda expressions are supported by at least MSVC 2010, GCC 4.5, clang 3.1. For the last two, you need to pass `-std=c++0x` as a flag.

You can then write code like:

``` cpp
void MyWindow::saveDocumentAs() {
    QFileDialog *dlg = new QFileDialog();
    dlg->open();
    QObject::connect(dlg, &QDialog::finished, [=](int result) {
        if (result) {
            QFile file(dlg->selectedFiles().first());
            // ... save document here ...
        }
        dlg->deleteLater();
    });
}
```

