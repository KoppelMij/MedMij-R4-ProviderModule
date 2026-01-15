---
topic: FO
---

# Functioneel ontwerp

## Algemeen

### Doelgroep
De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Doelgroep) van de functionele ontwerpen binnen MedMij.

### Kaders en uitgangspunten

### Algemeen 


### Richtlijn en proces
Dit ontwerp is conform specificaties genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.01/Ontwerpen#Richtlijn) van de functionele ontwerpen binnen MedMij.

 

### Reikwijdte
De reikwijdte van dit ontwerp beslaat de functionele beschrijvingen en de dataset voor de gegevensuitwisselingen die voortvloeien uit uitgevoerde Aanbiedersmodule.

### Infrastructuur
Geen nadere specificatie, anders dan genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Infrastructuur) van de functionele ontwerpen binnen MedMij.

### Geografische reikwijdte
Geen nadere specificatie, anders dan genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Geografische_reikwijdte) van de MedMij functionele ontwerpen.

### Kwalificatie en testen
Op dit moment wordt de usecase uit dit ontwerp getoetst in een Proof of Concept (PoC). Later volgt meer informatie over kwalificatie.

## Usecases

### Algemeen


### Usecase: Aanbiedersmodule

### Doel en relevantie uitwisselen taken
Bij een Defensie Tandheelkundige Dienst (DTD) worden de medewerkers ten minste jaarlijks beoordeeld tijdens het periodiek mondonderzoek de Dental Fit-status (DF). Een medewerker is Dental Fit als hij/zij in Class 1 of 2 valt. Als een medewerker in Class 3 of 4 valt, is de medwerker niet Dental Fit. De klassering van een medewerker vindt plaats op basis van NAVO-standaard AMedP-4.4. In aanvulling daarop wordt Class 0 toegevoegd: er is nog nooit contact geweest met een DTD en er is geen mondzorgdossier. Dental Fitness beschrijft de status van de gezondheid van de mond. 

#### Patient journey Aanbiedersmodule
De patient journey beschrijft enkele momenten waarop je als patiënt zijnde inzicht kan of zou willen hebben in de 



### Procesbeschrijving Aanbiedersmodule

#### Precondities
- De  medewerker beschikt over een eigen PGO dat aan de MedMij-eisen voldoet. 
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van medische gegevens tussen het betreffende bronsysteem en de eigen persoonlijke gezondheidsomgeving.
- Er is sprake van een dossier voor de medewerker binnen de DTD. 
- De beoordelende medewerker is ingelogd met de juiste authenticatie en autorisatie. 
 

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

### Weergaverichtlijnen

#### Scope weergaverichtlijnen 
Het betreft een richtlijn. PGO-leveranciers hebben zelf de keuze of zij (delen van de) richtlijn toepassen voor de weergave van mondzorggegevens.

De richtlijn geeft handvatten voor:
- het gebruik van patiëntvriendelijke termen en toelichting;
- de inhoud van het overzicht van mondzorggegevens in de PGO;

De richtlijn geeft géén handvatten voor de vormgeving (kleur, vorm, lettertype, etc.) van taken. 


### Inhoud weergaverichtlijn
De weergaverichtlijnen voor taken zijn [hier](url) te vinden.