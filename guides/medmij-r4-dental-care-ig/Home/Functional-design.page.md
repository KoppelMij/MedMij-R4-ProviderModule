---
topic: FO
---

# Functioneel ontwerp

## Algemeen

### Doelgroep
De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Doelgroep) van de functionele ontwerpen binnen MedMij.

### Kaders en uitgangspunten

### Algemeen 
- De uitwisseling is gebaseerd op het MedMij-afsprakenstelsel en de FHIR-profielen voor AanbiedersModule (ProviderModule).
- De zorgaanbieder initieert een digitale (eHealth) activiteit voor een patiënt.
- De patiënt ziet een takenlijst in de Persoonlijke Gezondheidsomgeving (PGO) en kan vanuit de PGO een externe module/applicatie starten om de taak uit te voeren (bijvoorbeeld via een launch naar de aanbiedersmodule) óf de taak uitvoeren via een Koppeltaal-gestuurde workflow.
- Activiteiten kunnen verschillende typen hebben, zoals: informatie bekijken, een vragenlijst invullen of thuismetingen uitvoeren.

### Richtlijn en proces
Dit ontwerp is conform specificaties genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.01/Ontwerpen#Richtlijn) van de functionele ontwerpen binnen MedMij.

### Reikwijdte
De reikwijdte van dit ontwerp beslaat:
- de functionele beschrijving van het uitwisselen van patient-specifieke digitale activiteiten (taken) die voortvloeien uit een (door de zorgaanbieder) aangevraagde aanbiedersmodule;
- de dataset (Logical Models) die benodigd is voor deze uitwisseling, inclusief de relaties tussen ServiceRequest, Task, ActivityDefinition en Endpoint.

### Infrastructuur
Geen nadere specificatie, anders dan genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Infrastructuur) van de functionele ontwerpen binnen MedMij.


### Geografische reikwijdte
Geen nadere specificatie, anders dan genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Geografische_reikwijdte) van de MedMij functionele ontwerpen.

### Kwalificatie en testen
Op dit moment wordt de usecase uit dit ontwerp getoetst in een Proof of Concept (PoC). Later volgt meer informatie over kwalificatie.

## Usecases

### Algemeen
Binnen ProviderModule worden patient-specifieke digitale activiteiten aangeboden aan de patiënt. De zorgaanbieder:
	1.	selecteert een digitale activiteit (module);
	2.	zet deze uit voor een specifieke patiënt (order);
	3.	de patiënt ontvangt één of meerdere taken (workflow-items) om uit te voeren.

### Usecase: Aanbiedersmodule

### Doel en relevantie uitwisselen taken
Het doel is dat een patiënt in zijn/haar PGO inzicht heeft in:
- welke digitale activiteiten door de zorgaanbieder zijn aangevraagd;
- welke taken nog openstaan en wat de planning is;
- wat de patiënt precies moet doen (patient-specifieke instructies);
- de voortgang/status (ontvangen, geaccepteerd, in uitvoering, afgerond, etc.).

Voor de zorgaanbieder is het doel:
- het betrouwbaar kunnen uitzetten van digitale activiteiten;
- het volgen van voortgang (op hoofdlijnen) via statusinformatie;


#### Patient journey Aanbiedersmodule
De patient journey beschrijft momenten waarop de patiënt inzicht kan of wil hebben in de digitale activiteiten:
	1.	Ontvangst
- De patiënt ontvangt een melding/taak dat er een digitale activiteit klaarstaat (bijv. “Meet je bloeddruk 2× per dag gedurende 7 dagen”).
	2.	Starten van de activiteit
- De patiënt start de activiteit vanuit de PGO, bijvoorbeeld door een externe module/applicatie te openen (“Start module”). Hiermee wordt de uitvoering van de activiteit gestart in de juiste context.
	3.	Uitvoering
- De patiënt voert één of meerdere taken uit (bijv. metingen, vragenlijst, informatie bekijken) in de externe module/applicatie of via een Koppeltaal-gestuurde workflow.
	4.	Terugkoppeling
- Na het uitvoeren van de activiteit gaat de patiënt terug naar de PGO. De status van de taak (en eventuele subtaken) wordt bijgewerkt zodat de voortgang en afronding zichtbaar zijn in de takenlijst. Het terugkoppelen van inhoudelijke resultaten valt in deze versie buiten scope; de focus ligt op de taken en de werkstroom zelf.



### Procesbeschrijving Aanbiedersmodule

#### Precondities
- De patiënt beschikt over een PGO (of andere cliëntapplicatie) dat aan de MedMij-eisen voldoet.
- De patiënt heeft toestemming gegeven voor elektronische uitwisseling van medische gegevens tussen bronsysteem en PGO.
- Er is een dossier voor de patiënt in het bronsysteem.
- De zorgaanbieder is ingelogd met juiste authenticatie en autorisatie.
 

#### Proces


### Alternatieve flow raadplegen Taken


#### Postconditie


### Bedrijfsrollen en UML activity diagram
Deze usecase onderscheidt twee bedrijfsrollen, namelijk de Persoon en de (Zorg)Aanbieder zoals te zien in onderstaande tabel.

Tabel 1 Bedrijfsrollen

| Bedrijfsrol (actor) | Beschrijving bedrijfsrol |
| --- | --- |
| Patiënt/ Persoon | Gebruiker van de PGO |
| (zorg)aanbieder | Gebruiker van het bronsysteem |

### Informatieoverdracht
Zowel de persoon als de (zorg)aanbieder maken ieder gebruik van een informatiesysteem:

- PGO (persoon)
- Bronsysteem ((zorg)aanbieder)

#### Systemen en systeemrollen
Deze systemen kennen ieder verschillende systeemrollen, die het uitwisselen van gegevens tussen deze systemen mogelijk maken. 

Tabel 2 Systeemrol

| Systeem | Naam systeemrol | Systeemrolcode | Omschrijving |
| --- | --- | --- | --- |


### Transacties en transactiegroepen
Het uitwisselen van gegevens tussen de verschillende systeemrollen gebeurt op basis van transacties, een verzameling van transacties (bijvoorbeeld een vraag- en antwoordbericht) vormt een zogeheten transactiegroep. Voor de transacties die tussen de systeemrollen plaatsvinden. Hier is bij de scenario’s beschreven uit welke gegevenselementen een transactie bestaat en wat de kardinaliteit van deze elementen is. Voor de technische specificaties en FHIR implementation guide, zie de {{pagelink:TO, text:FHIR IG}}.

Tabel 3 Transactiegroep

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |


### Ontwerp uitwisselen taken



Tabel 3 Transactiegroep

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |


### Dataset
link naar Logical models
