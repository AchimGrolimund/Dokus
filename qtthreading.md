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