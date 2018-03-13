<!-- TITLE: Linux Commands -->
<!-- SUBTITLE: Einige Nützliche Linux Commands -->


## Nano Installieren

```bash
yum install nano -y
```

## Bash installieren

```bash
yum install bash -y
```

## Add User

```bash
adduser <username>
```

## Add Pass to User

```bash
passwd <username>
```

## Kernelupdate

```bash
yum update kernel -y
```

## Gruppe erstellen

```bash
groupadd grpname -g1900 #(grp id)
```

## User beim erstellen in eine Sekundär Gruppe stecken

```bash
useradd -G grpname username -u1900 #(uid)
```

## User beim erstellen in eine Primär Gruppe stecken

```bash
useradd -g grpname username -u1900 #(uid)
```

## Steckt user in grupe wheel

```bash
usermod -aG wheel username
```

## Chronejob anlegen

```bash
cronetab -e
#(Vim I drücken für INSERT)
#(ESC drücken für exit & :wq für writequite )
```
## crontab aufbau anschauen

```bash
cat /etc/crontab
```
## auflisten der crontabs

```bash
crontab -l
```
## cronetrab mit nano bearbeiten

```bash
nano /var/spool/cron/root
```
## SSH anpassen

```bash
nano /etc/ssh/sshd_config
#(PermitRootLogin Kommentar entfernen)
```

## ssh service neustarten

```bash
service sshd restart
ssh localhost #(alles bestätigen)
```

## Installscript von Server laden

```bash
yum install bash -y
yum install dos2unix -y
curl -o script.sh http://138.197.185.209/installscript.sh
chmod +x script.sh
dos2unix script.sh
./script.sh
```

## file rechte geben

```bash
chmod +x script.sh
```

## File in unix format speichern (im fehlerfall)

```bash
yum install dos2unix
dos2unix script.sh
#oder 
#Open file /usr/local/bin/brew with vi (vi /usr/local/bin/brew)
#While on vi issue this commad (via esc or :) :set fileformat=unix
#Close file on vi via :wq!
```

## userliste anzeigen

```bash
cat /etc/passwd
```

## User löschen

```bash
userdel [-r] Benutzername #(-r löscht auch sein homeverzeichniss und mail)
```

## von User login to ROOT

```bash
su
#Passwort von ROOT eingeben
```

## Berechtigungen anzeigen

```bash
ls -l #Listet alle dDateien im Verzeichnis

ls -l <filename> #Zeigt berechtigungen von dem File

-    (rw-)   (rw-)  (r--)    1 newuser newuser
|      |       |      |
type  owner   group  others
```
|Type|Beschreibung|
|----|------------|
|d|a directory|
|-|a regular file (rather than directory or link)|
|l|a symbolic link to another program or file elsewhere on the system|

|Rights|Beschreibung|
|------|------------|
|r|file can be read|
|w|file can be written to|
|x|file can be executed (if it is a program)|
