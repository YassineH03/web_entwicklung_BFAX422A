# My-ToDo Web-Applikation 

## Was ist die Idee?
Die Idee dieser Web-Anwendung ist es eine „To-Do“ App bereitzustellen, in dieser der Anwender in der Lage ist, seine täglichen Aufgaben zu übersehen und zu verwalten. Die Anwendung soll dabei die Produktivität steigern und das Versäumen von Aufgaben bewahren.


## Verwendete Technologien 
Zur Entwicklung der Applikation wurden zwei Haupttools genutzt zum einem die Low-Code Programmierumgebung FlutterFlow als Client-Seite und als Server-Seite ist die Datenbank von Google namens Firebase. FlutterFlow ist eine Low-Code Programmier-plattform, die auf Flutter aufsetzt und dem Entwickler eine Entwicklungsumgebung bereitstellt, die sehr intuitiv zu nutzen ist. Diese Umgebung erlaubt es ebenfalls per-formanter und mit geringerem Aufwand präzisere Konfigurationen für die jeweilige Applikation umzusetzen. Ein weiterer Vorteil welcher spezifisch für FlutterFlow gilt, ist seine leichte Anbindung mit der Firebase-Datenbank. Durch die standardmäßige Integration der Schnittstelle zur Datenbank, ist die Implementierung der Datenbank eine leichte Umsetzung. 
Die Firebase-Datenbank ist eine dokumentorientierte Datenbank und basiert daher auf Datensätze, die in Form von Dokumenten bzw. im JSON-Format existieren. Sie ermög-licht es dementsprechend jedes Dokument Individuell zu kreieren und zu bearbeiten.


## Frontend

### Homepage
Der User wir beim Starten der Web-Anwendung mit der Homepage begrüßt. In dieser sieht er seine Aufgaben aufgelistet, als auch in der oberen Rechten Ecke einen Button, der ihm erlaubt weitere Aufgaben hinzuzufügen. Jede Aufgelistete Aufgabe besitzt eine Überschrift und eine Textbeschreibung (siehe Abb.1). 

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/ab9e0db2-e45f-46db-8dbc-d5ed8cfa56f8)

Abbildung 1

Desweiterem ist es möglich beim Drücken des rechten Pfeils einer Aufgabe, diese zu bearbeiten (Siehe Abb. 2).

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/82d43b8e-67b0-478b-b56f-12ac66d150b5)

Abbildung 2

An der rechten Seite jeder Aufgabe ist ebenfalls ein Kreis, welcher je nach Farbgebung den Status der Aufgabe beschreibt (grün = Erledigt; Braun = Offen). Sollte eine Auf-gabe den Status „Erledigt“ haben, so werden Überschrift sowie Textbeschreibung ausgegraut und nach unten verschoben (siehe Abb. 1). Genauso gilt auch umgekehrt wenn eine Aufgabe als vom „Erledigt“ Zustand in den „Offen“ Zustand geht, so wird diese wieder nach oben verschoben.


### createTask 
Die createTask-Page erscheint, sobald der User auf den oberen rechten Button drückt.
Sie ermöglicht ist zum einem einer Aufgabe eine Überschrift zu geben und zum ande-rem eine Aufgabe eine Beschreibung hinzuzufügen (siehe Abb. 3). 

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/14fec981-6ad0-4884-819a-55598791f7da)

Abbildung 3

Möchte der User nun seine Aufgabe speichern so kann auf dem Knopf sichern drücken, sollte er sich jedoch umentscheiden so kann auf den linken Pfeil in der oberen linken Ecke drücken (siehe Abb. 4).

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/baafcd34-6a25-4a66-9d2a-8cb920a4e611)

Abbildung 4


### editTask
Ist eine Aufgabe vorhanden und der Benutzer entscheidet sich diese zu bearbeiten, in-dem er auf dem Rechtenpfeil drückt, so gelangt er auf die editTask-Page. Diese Page ist eine Kopie der createTask-Page, mit der Bedingung das diese Page Datensätze be-arbeitet, anstatt neue Datenbestände zu erstellen (siehe Abb. 5).

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/0942ffb8-5676-47ed-b995-96fd138fac8b)

Abbildung 5

Demnach wird im Hintergrund, beim Drücken des Bearbeitungs-Buttons, Parameter zur editTask-Page weitergegeben, um die spezifischen Aufgaben identifizieren zu kön-nen (siehe Abb.6).  

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/749a0dff-73f5-4ca4-8ee7-2d697280acda)

Abbildung 6


### optionsMenu

Möchte der Benutzer eine Aufgabe endgültig Löschen so kann mit dem langen ge-drückt Halten auf einer Aufgabe, die Aufgabe bzw. im Backend das jeweilige Doku-ment gelöscht werden. Dabei wird Aktion „Delete“ der Referenzparameter zum jewei-ligen Dokument mitgeliefert. (siehe Abb. 7 und 8) 

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/5600fc2f-2191-4548-8545-9f8271b11b2e)

Abbildung 7

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/4f334b82-1f12-4f4c-a0df-b181ddee4d28)

Abbildung 8 

## Backend

### Firebase 

Wie zu Beginn erwähnt ist für das Backend die Firebase-Datenbank genutzt worden. 
Sie ist dazu da, die Aufgaben mit ihren Informationen in einzelne Dokumente zu si-chern. Da Firebase eine dokumentorientierte Datenbank ist wird auch bei ihr Hierar-chie Struktur angewendet. So besteht die Datenbank aus einer Sammlung namens „Aufgaben“ in der die Dokumente gesichert werden (siehe Abb. 9).
 
![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/95c8d903-ae17-4af3-b3d3-91ded1005aa9)

Abbildung 9 

Ein Dokument besitzt standardmäßig zur Identifizierung eine ID (siehe Abb. 10) 

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/97c904f9-4976-4eed-b669-ad8eced6d7c9)

Abbildung 10

Dadurch das jedes Dokument eine Aufgabe beschreibt besitzen diese ebenfalls die At-tribute einer Aufgabenüberschrift und eine Aufgabenbeschreibung. Hinzu kommt noch das Attribut „completed“ welches genutzt wird um den Status einer Aufgabe vorzuge-ben (siehe Abb. 11)

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/a9f6a350-2c1a-42a3-91a4-971c29864557)

Abbildung 11

Die Dokumente, die hier aufgeführt sind, gehen einher mit den Aufgaben in Abbildung 1, dies veranschaulicht die Echtzeit- Synchronisation der Datenbank. 

### Schnittstelle 

Zum Anbinden des Backends ans Frontend bietet FluttterFlow die Möglichkeit an, in den Einstellungen die Firebase Datenbank anhand Ihrer ID zu integrieren. Dabei muss jedoch auch dem FlutterFlow Editorrechte gewährleistet werden, um die Datenbank bearbeiten zu können (siehe Abb. 12) 

![image](https://github.com/YassineH03/web_entwicklung_BFAX422A/assets/147349679/cc8cff74-3add-4d3a-86e7-daa88f7dd907)

Abbildung 12

## Fazit 

Insgesamt ist mir meine Umsetzung gelungen und auch die Anforderungen, die an meiner Anwendung gerichtet waren, konnten vollständig umgesetzt werden. Heraus-fordernd war für mich, die erstmalige Verwendung einer Low-Code Plattform. Da die-se Technologie noch relativ neu ist und dementsprechend keine großen Sammlungen an Recherchematerial hat, war der Entwicklungsprozess ein Großteil von probieren und fehlschlagen, mit der Zeit wurde der Umgang jedoch leichter und die Umsetzun-gen entsprachen immer mehr den Vorstellungen, wodurch sich ein Endresultat ergeben hat mit dem ich zufrieden bin.

