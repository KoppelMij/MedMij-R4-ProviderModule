---
topic: FO
---

# Functioneel ontwerp

## Algemeen

### Doelgroep
De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Doelgroep) van de functionele ontwerpen binnen MedMij.


### Uitganspunten
- De uitwisseling is gebaseerd op het MedMij-afsprakenstelsel en de FHIR-profielen voor ProviderTasks (Aanbiedertaken).
- De zorgaanbieder initieert een digitale activiteit voor een patiënt.
- De patiënt ziet een takenlijst in de Persoonlijke Gezondheidsomgeving (PGO) en kan vanuit de PGO een externe module/applicatie starten om de taak uit te voeren (bijvoorbeeld via een launch naar de Aanbiedertaken) óf de taak uitvoeren via een Koppeltaal-gestuurde workflow.
- Digitale activiteiten kunnen verschillende typen hebben, zoals: informatie bekijken, een vragenlijst invullen of thuismetingen uitvoeren.


### Richtlijn en proces
Dit ontwerp is conform specificaties genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.01/Ontwerpen#Richtlijn) van de functionele ontwerpen binnen MedMij.


### Reikwijdte
De reikwijdte van dit ontwerp beslaat:
- de functionele beschrijving van het uitwisselen van patient-specifieke digitale activiteiten (taken) die voortvloeien uit een (door de zorgaanbieder) aangevraagde Aanbiedertaken;
- de dataset (Logical Models) die benodigd is voor deze uitwisseling, inclusief de relaties tussen ServiceRequest, Task, ActivityDefinition en Endpoint.


### Infrastructuur
Geen nadere specificatie, anders dan genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Infrastructuur) van de functionele ontwerpen binnen MedMij.


### Geografische reikwijdte
Geen nadere specificatie, anders dan genoemd in [de algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Geografische_reikwijdte) van de MedMij functionele ontwerpen.


### Kwalificatie en testen
Op dit moment wordt de usecase uit dit ontwerp getoetst in een Proof of Concept (PoC). Later volgt meer informatie over kwalificatie.



## Usecases

### Algemeen
Binnen ProviderTasks worden digitale activiteiten aangeboden aan de patiënt. 
De zorgaanbieder:
	1.	selecteert een digitale activiteit (module);
	2.	zet deze uit voor een specifieke patiënt;
	3.	de patiënt ontvangt één of meerdere taken (taken) om uit te voeren.


### Usecase: Aanbiedertaken

#### Doel en relevantie uitwisselen taken
Het doel is dat een patiënt in zijn/haar PGO inzicht heeft in:
- welke digitale activiteiten door de zorgaanbieder zijn aangevraagd;
- de voortgang/status van de taken en wat de planning is;
- wat de patiënt precies moet doen (beschrijving).

Voor de zorgaanbieder is het doel:
- het betrouwbaar kunnen uitzetten van digitale activiteiten;
- het volgen van voortgang (op hoofdlijnen) via statusinformatie;


#### Patient journey Aanbiedertaken
De patient journey beschrijft momenten waarop de patiënt inzicht kan of wil hebben in de digitale activiteiten:

Ontvangst:
- De patiënt ontvangt een melding (via mail) dat er een digitale activiteit klaarstaat (bijv. “Meet je bloeddruk 2× per dag gedurende 7 dagen”).

Starten van de activiteit:
- De patiënt start de digitale activiteit vanuit de PGO, bijvoorbeeld door een externe module/applicatie te openen (“Start module”). Hiermee wordt de uitvoering van de activiteit gestart in een externe applicatie met de juiste context.

Uitvoering:
- De patiënt voert één of meerdere taken uit (bijv. metingen, vragenlijst, informatie bekijken) in de externe module/applicatie of via een Koppeltaal-gestuurde workflow.

Terugkoppeling:
- Na het uitvoeren van de digitale activiteit gaat de patiënt terug naar de PGO. De status van de taak (en eventuele subtaken) wordt bijgewerkt in het bronsysteem, zodat de voortgang en afronding zichtbaar zijn in de takenlijst. Het terugkoppelen van inhoudelijke resultaten (zoals de beantwoording van een vragenlijst) valt in deze versie buiten scope. De focus ligt op de taken en de workflow zelf.



### Procesbeschrijving Aanbiedertaken

#### Precondities
- De patiënt beschikt over een PGO (of andere cliëntapplicatie) dat aan de MedMij-eisen voldoet.
- De patiënt heeft toestemming gegeven voor elektronische uitwisseling van gegevens tussen bronsysteem en PGO.
- Er is een dossier voor de patiënt in het bronsysteem.
- De zorgaanbieder is ingelogd met juiste authenticatie en autorisatie.
 

#### Proces
Selectie digitale activiteit (Module):
- Zorgaanbieder selecteert een digitale activiteit (Module) die past bij het zorgproces (bijv. CVRM/diabetes/COPD). 

1. Aanmaken en publiceren taken:
- Het bronsysteem maakt één of meerdere Task resources aan en stelt deze beschikbaar aan de patiënt, inclusief:
	- een koppeling naar de digitale activiteit (ActivityDefinition);
	- één hoofdtaak (of meerdere taken) die de patiënt in de PGO ziet;
	- optioneel subtaken (bijv. losse meetmomenten), gekoppeld aan een hoofdtaak;
	- planning/tijdschema, indien van toepassing;
	- Patient-specifieke instructies, indien van toepassing.

2. Patiënt informeren:
- De patiënt wordt geïnformeerd (bijv. per e-mail) dat er een nieuwe taak klaarstaat in de PGO.

3. Raadplegen door patiënt:
- De patiënt raadpleegt de takenlijst in de PGO en ziet per taak o.a. de omschrijving, instructies, en eventuele planning. De patiënt kan taken filteren (bijv. per “zorgmodule”/groep) op basis van contextinformatie.

4. Uitvoering:
- De patiënt start de digitale activiteit vanuit de PGO (launch naar de module/applicatie) en voert de activiteit uit in de externe applicatie. 

5. Statusupdates:
- De status van de Task(s) wordt bijgewerkt in het bronsysteem, zodat voortgang en afronding zichtbaar zijn in de takenlijst voor de zorgaanbieder en patiënt. De patiënt kan op elk moment de lijst met openstaande taken opnieuw ophalen.


#### Postconditie
- De patiënt heeft één of meerdere taken uitgevoerd of afgerond (status bijgewerkt).
- De zorgaanbieder kan (op hoofdlijnen) de voortgang volgen via de status van taken.


### Bedrijfsrollen
Deze usecase onderscheidt twee bedrijfsrollen, namelijk de Persoon en de (Zorg)Aanbieder zoals te zien in onderstaande tabel.

Tabel 1 Bedrijfsrollen

| Bedrijfsrol (actor) | Beschrijving bedrijfsrol |
| --- | --- |
| Patiënt/ Persoon | Gebruiker van de PGO die taken ontvangt en uitvoert |
| (zorg)aanbieder | Gebruiker van het bronsysteem die digitale activiteiten voor de patiënt aanvraagt |


### Informatieoverdracht
Zowel de persoon als de (zorg)aanbieder maken ieder gebruik van een informatiesysteem:
- PGO (persoon)
- Bronsysteem ((zorg)aanbieder)
- Aanbiedertaken (persoon)


#### Systemen en systeemrollen
Deze systemen kennen ieder verschillende systeemrollen.

Tabel 2 Systeemrol

| Systeem | Naam systeemrol | Systeemrolcode | Omschrijving |
| --- | --- | --- | --- |
| PGO | TaakGegevensRaadplegend | MM-1.0-TGR-FHIR | Raadpleegt taken, toont (patiënt)instructie en ondersteunt het starten van de digitale activiteit|
| Bronsysteem | TaakGegevensBeschikbaarstellend | MM-1.0-TGR-FHIR | Maakt Task en/of ServiceRequest en stelt deze beschikbaar aan de patiënt |
| Modulesysteem | DigitaleActiviteitUitvoerder | MM-1.0-DAU-FHIR | Levert de digitale activiteit (bijv. vragenlijst, informatie, meting) en ondersteunt uitvoering na launch |

### Transacties en transactiegroepen
Het uitwisselen van gegevens tussen de verschillende systeemrollen gebeurt op basis van transacties, een verzameling van transacties (bijvoorbeeld een vraag- en antwoordbericht) vormt een zogeheten transactiegroep.

Tabel 3 Transactiegroep

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |
| Verzamelen Taakgegevens (PULL) | Beschikbaar stellen Taken | MM-1.0-TGR-FHIR | Bronsysteem | Zorgaanbieder |
| Verzamelen Taakgegevens (PULL) | Raadplegen Taken | MM-1.0-TGR-FHIR | PGO | Patiënt |
| Digitale activiteit uitvoeren (LAUNCH) | Launch naar Aanbiedertaken| MM-1.0-DAU-FHIR | Modulesysteem | Patiënt |

### Ontwerp uitwisselen taken
Functioneel ontwerpprincipes
- Herbruikbare definitie: ActivityDefinition beschrijft de digitale activiteit (launchable module, informatie, vragenlijst, meting) inclusief technische launch-informatie (Endpoint).
- Patient-specifieke order: ServiceRequest is de patient-specifieke klinische order om de activiteit uit te voeren, inclusief planning en patiëntinstructies.
- Workflow tracking: Task is het workflow-item dat de patiënt ziet en uitvoert.
- Groepering: Taken kunnen logisch gegroepeerd worden (bijv. “Digitale zorgmodule CVRM/Diabetes”) via groupIdentifier.
- Subtaken: Meetmomenten of deelstappen kunnen als subtaak worden gemodelleerd en koppelen aan een hoofdtaak via partOf.

### Dataset
De dataset wordt beschreven in de bijbehorende Logical Models:
- LogicalModel [Task](https://simplifier.net/medmij-r4-provider-module/lmtask)
- LogicalModel [ActivityDefinition]()
- LogicalModel [ServiceRequest]()
- LogicalModel [Endpoint]()
