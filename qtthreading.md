<!-- TITLE: QT Threading -->
<!-- SUBTITLE: all about Threading in QT -->

## Threads Synchronisieren

### Mutex

**Mutex** Blockiert einen gewissen Code Teil, so das nur ein Thread in diesen Codeabschnitt gehen kann bis der andere Thread diesen wider freigibt.

#### Mutex Deklarieren

``` cpp
#include <QMutex> 
QMutex mutex = new QMutex();

....

mutex.lock();
//Code here
mutex.unlock
```



#### MutexLocker

Dre **QMutexLocker** ist eine Hilfsklasse welche man benutzen kann wen man den Mutex nicht freigeben kann wen am ende des Codes z.B.: ein **return** kommt.

Der locker wird am ende wen die instanz verlassen wider, wider freigegeben und somitt auch das mutex.unlock ausgelöst.

``` cpp
#include <QMutex> 
#include <QMutexLocker> 
QMutex mutex = new QMutex();

....
QMutexLocker locker(mutex);
//Code here
return;
```
### QWaitCondition

mit dem **QWaitCondition** kann man einen Thred in den wartenden status versetzen und so das Mutex wider zurück geben das andere Threads weiterarbeiten können.

An der Stelle an dem der Thread wider "Aufgeweckt" werden darf, kamm man den Thread mitels **..wakeAll()** wider in den **Ready-Modus** gesetzt werden. 

``` cpp
#include <QWaitCondition>
#include <QMutex> 
#include <QMutexLocker> 
QMutex mutex = new QMutex();
waitCondition = new QWaitCondition();

....
QMutexLocker locker(mutex);
//Code here
while (false){ //muss ein While sein, das der aufgeweckte nochmals ausgeführt wird.
    waitCondition->wait(mutex);
}
return;
}

void foo(){
    //Code here
    waitCondition->wakeAll();
}
```

