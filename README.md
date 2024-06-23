# My-ToDo Web-Applikation 

## Was ist die Idee?
Die Idee dieser Web-Anwendung ist es eine „To-Do“ App bereitzustellen, in dieser der Anwender in der Lage ist, seine täglichen Aufgaben zu übersehen und zu verwalten. Die Anwendung soll dabei die Produktivität steigern und das Versäumen von Aufgaben bewahren.


## Verwendete Technologien 
Zur Entwicklung der Applikation wurden zwei Haupttools genutzt zum einem die Low-Code Programmierumgebung FlutterFlow als Client-Seite und als Server-Seite ist die Datenbank von Google namens Firebase. FlutterFlow ist eine Low-Code Programmier-plattform, die auf Flutter aufsetzt und dem Entwickler eine Entwicklungsumgebung bereitstellt, die sehr intuitiv zu nutzen ist. Diese Umgebung erlaubt es ebenfalls per-formanter und mit geringerem Aufwand präzisere Konfigurationen für die jeweilige Applikation umzusetzen. Ein weiterer Vorteil welcher spezifisch für FlutterFlow gilt, ist seine leichte Anbindung mit der Firebase-Datenbank. Durch die standardmäßige In-tegration der Schnittstelle zur Datenbank, ist die Implementierung der Datenbank eine leichte Umsetzung. 
Die Firebase-Datenbank ist eine dokumentorientierte Datenbank und basiert daher auf Datensätze, die in Form von Dokumenten bzw. im JSON-Format existieren. Sie ermög-licht es dementsprechend jedes Dokument Individuell zu kreieren und zu bearbeiten.


## Frontend

### Homepage
Der User wir beim Starten der Web-Anwendung mit der Homepage begrüßt. In dieser sieht er seine Aufgaben aufgelistet, als auch in der oberen Rechten Ecke einen Button, der ihm erlaubt weitere Aufgaben hinzuzufügen. Jede Aufgelistete Aufgabe besitzt ei-ne Überschrift und eine Textbeschreibung (siehe Abb.1). 

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/ab9e0db2-e45f-46db-8dbc-d5ed8cfa56f8)

Abbildung 1

Desweiterem ist es möglich beim Drücken des rechten Pfeils einer Aufgabe, diese zu bearbeiten (Siehe Abb. 2).

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/82d43b8e-67b0-478b-b56f-12ac66d150b5)

Abbildung 2

An der rechten Seite jeder Aufgabe ist ebenfalls ein Kreis, welcher je nach Farbgebung den Status der Aufgabe beschreibt (grün = Erledigt; Braun = Offen). Sollte eine Auf-gabe den Status „Erledigt“ haben, so werden Überschrift sowie Textbeschreibung aus-gegraut und nach unten verschoben (siehe Abb. 1). Genauso gilt auch umgekehrt wenn eine Aufgabe als vom „Erledigt“ Zustand in den „Offen“ Zustand geht, so wird diese wieder nach oben verschoben.




