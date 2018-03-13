<!-- TITLE: Netzwerk Prüfungsvorbereitung -->
<!-- SUBTITLE: Für die erste Prüfung (17.03.18) -->
#Ethernet
##Quick Facts
* Distanz: 100m
* Repeater: Nur weiterleiten
* Verstärker: Signal neu aufbauen
* Netzzugriff: BUS (TCM, ACD)
* JAM Sequenz: Kollision

## 2.2 Unterschied Repeater und Verstärker
### Verstärker
<img src="images/NET_breitbandLan.png" alt="" width="300">

* Die Aufgabe des Verstärkers, ist die Signale zu verstärken
* Einsatz in Breitbandnetzen
* Wichtig: Hier werden auch fehlerhafte Signale verstärkt!

### Repeater
<img src="images/NET_basisbandLan.png" alt="" width="300">

* **Regeneriert** die Signale, welche durch Induktiviäten und Kapazitäten (Übertragungstechnik) verändert wurden
* Signal wird wieder sauber aufbereitet und in der ursprünglichen Form auf Übertragungsmedium gelegt

<<<<<<< HEAD
=======
![Net Gframe Format](/uploads/images/net-gframe-format.png "Net Gframe Format")
>>>>>>> 7643cfb48b23c55f71c81af18aecbe8e2e4da2fa

* Einsatz in Basisband-Lan

##3.2 Minimale Blocklänge

* Minimale Blocklänge von 64 Bytes (ohne Berücksitigung von Präämbel und Start Frame Delimiter)
* Jeder gültige CSMA/CD-Datenblock muss min. grösser sein als min. Blocklänge
* Stellt sicher, dass sendende Station eine Kollision ihrer Nachricht mit einem oder mehrere Nachrichten bei einem maximalen Netzausbau immer noch erkennt
* Falls Station Nachrichtenblock kleiner als min. Blocklänge empfängt = Interpretation als Kollisionsrest und wird ignoriert

##3.3 Maximale Blocklänge

- ​



<<<<<<< HEAD
##3.5 CSM ACD Duplex-Modus wann und wiso
=======
### Verstärker
![Net Breitbandlan](/uploads/images/net-breitbandlan.png "Net Breitbandlan")
Die Aufgabe des Verstärkers, ist die Signale zu verstärken. Einsatz in Breitbandnetzen. 
>>>>>>> 7643cfb48b23c55f71c81af18aecbe8e2e4da2fa


<<<<<<< HEAD
=======
### Repeater
![Net Basisbandlan](/uploads/images/net-basisbandlan.png "Net Basisbandlan")
Der Repeater **regeneriert** die Signale, welche durch Induktiviäten und Kapazitäten (Übertragungstechnik) verändert wurden. Das Signal wird wieder sauber aufbereitet und in der ursprünglichen Form auf das Übertragungsmedium gelegt. Einsatz in Basisband-Lan
>>>>>>> 7643cfb48b23c55f71c81af18aecbe8e2e4da2fa

##4.1 MAC Rahmen (Was die Felder bedeuten)

##4.2

10Base 100Base GBase -> Nicht anschauen
Wann 4 wann 8 Drähte
Gigabite 8 Drähte
Anderes 4 Drähte
Gekreuztes Kabel, wiso und wann.
PC <-> PC

#Switches Bitches
### Layer 2 Switches

Funktion und Aufgabe

	Switchen
	Wann wird geswitch
	Was wird benötigt(Kritieren)
	Wann nicht switchen
	Broadcast Flouding
	2.2.2.1 (Methoden) -> Erklären
Funktionsweise
	Port MAC Adresse wird gemerkt
Spanning Tree
	Aufgabe: Schema -> wer wird root bridge welche ports inaktive.
	Prio / Macadresse / Port
	Wie finden sie die Prio von Rootbridge heraus (Befehl) nicht auswendig
	Kosten für Routen -> Benutzt für berechnung
	Start
		Blocking
		Listining
		Learning
		Dauer: 20sec
		Danach Forward oder Blocking
	Bridnge priority
	Designated Port
	Interface costs

Sicherheit (Durchlesen)

##Layer 3 Switch nicht wissen



#VLAN
## Was ist Vlan

> Virtuelle LAN

Ein **VLAN** unterteilt ein Netzwerk in **abgeschirmte Segmente** und sorgt so für **mehr Sicherheit**.

## Wozu braucht es Vlan
> Logische Gruppen statt physikalische Segmente
>
> Informationsaustausch über VLAN

Um Gruppen von Benutzern logisch zusammenzufassen. So werden z.B.: Arbeiter vom Marketing zu Mitgliedern eines Marketing-VLANs gemacht.

Dies ermöglicht die Filterung von Broadcasts und bietet Sicherheit und ein Datenflussmanagement. 

## Trunked Port
Übermittelt Tag

## Access
Übermittelt Tag nicht
Verschiedene Vlans können nicht miteinander kommunizieren -> Router notwendig.

## VLAN Tagging (Frame-Tagging)
Die Frame-Header werden gekapselt oder modifiziert um die Frames mit einer VLAN-Kennung zu markieren. Vor der Weiterleitung zum Endgerät wird der Header wider in seine Ursprüngliche Form gebracht.

Mit dieser VLAN-Kennung wird logisch ermittelt, welche Pakete zu welcher VLAN-Gruppe gehören.

Es gibt mehrere solche Bündlungsmethoden **auch Trunking** genannt.

<img src="images/NET_gframe-format.png" alt="" width="400">

| Kürzel | Beschreibung |
| :----------------------------------- | :----------------------------------------------------------- |
| **TPID** **-** Tag Protocol Identifier : | Fester Wert 8100hex. Frame trägt die 802.1Q Information. |
|         **TCI** **-** Tag Control Information:TCI **-** Tag Control Information:                         | **PCP** - Priority Code Point: Benutzer-Prioritätsinformationen. |
| **DEI** **-** Drop Eligible Indicator: | Kann seperat oder in Verbindung mit PCP verwendet werden, um anzuzeigen, dass Frames in der Gegenwart von Staus fallen gelassen werden können (ehemals CFI). |
| **VID** **-** VLAN-Identifier:       | Identifizierung des VLANs, zu dem der Frame gehört.          |

## Können Vlan untereinander kommunizieren (Layer 3)?


Für eine Kommunikation unter den VLANs müssen diese über einen Layer 3 verfügen (Vermittlungsschicht).

#Übungen
* Ethernet
* Switching VLan
* Zusätlichen Switch einhängen
* Load Balancing
* VLan Spanning-Tree



# Zweite NET Prüfung

Findet am 23.6.18 statt.