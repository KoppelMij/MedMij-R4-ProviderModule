// Bundle with FHIR test instances in FSH format for ProviderModule test scenario 2
Instance: ProviderModule-ServiceRequest-Bloeddrukmeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ServiceRequest
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ServiceRequest</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Bloeddrukmeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie/servicerequest/id"
  * value = "2025-999999"
* status = #active
* intent = #order
* subject = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* occurrenceTiming.repeat
  * boundsPeriod.start = "2025-12-22"
  * boundsPeriod.end = "2025-12-28"
  * period = 1
  * periodUnit = #d
  * frequency = 2
  * frequencyMax = 2
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* patientInstruction = """
Beste patiënt,

U gaat gedurende 1 week zelf uw bloeddruk meten. Volg hierbij deze stappen:

1. Meet uw bloeddruk elke ochtend vóór het ontbijt (nuchter).
2. Meet uw bloeddruk elke avond vóór het avondeten.
3. Noteer de waarden direct na de meting in uw app.
4. Voer dit dagelijks uit gedurende 7 dagen en neem de resultaten mee naar uw volgende afspraak.
"""

Instance: ProviderModule-ActivityDefinition-Meetopdracht-Bloeddrukmeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-Minddistrict)
* extension[1]
  * url = "http://example.org/fhir/StructureDefinition/client-id"
  * valueString = "dvaaanbiedersmodule"
* url = "https://aanbiedermodule.example.org/web/api/smartonfhir/launch?iss=resourceserver.example.dva.nl"
* version = "1.0.0"
* name = "Meetopdacht bloeddrukmeting"
* title = "Bloeddrukmeting"
* status = #active
* publisher = "Minddistrict"
* description = "Bloeddrukmeting volgens NHG protocol. 7 dagen, 2x per dag, 's ochtends en 's avonds"
* useContext[0]
  * code = $UCT#program
  * valueCodeableConcept.text = "Digitale zorgmodule CVRM"
* useContext[1]
  * code = $UCT#focus
  * valueCodeableConcept.coding[0] = $SCT#84114007 "hartfalen"

Instance: ProviderModule-Task-Meetopdracht-Bloeddrukmeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Bloeddrukmeting)
    * type = "ActivityDefinition"
* basedOn = Reference(ProviderModule-ServiceRequest-Bloeddrukmeting)
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "TASK-99998"
* status = #received
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Bloeddrukmeting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-22T18:00:00+01:00"
* lastModified = "2025-12-22T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"


Instance: ProviderModule-ActivityDefinition-Informatie-Cholesterol
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-Minddistrict)
* extension[1]
  * url = "http://example.org/fhir/StructureDefinition/client-id"
  * valueString = "dvaaanbiedersmodule"
* url = "https://aanbiedermodule.example.org/web/api/smartonfhir/launch?iss=resourceserver.example.dva.nl"
* version = "1.0.0"
* name = "Informatie over cholesterol"
* title = "Wat is cholesterol en wat zijn de risico's?"
* status = #active
* publisher = "Minddistrict"
* description = "Dit is een algemene toelichting over wat is cholesterol en wat zijn de risico's"
* useContext[0]
  * code = $UCT#program
  * valueCodeableConcept.text = "Digitale zorgmodule CVRM"
* useContext[1]
  * code = $UCT#focus
  * valueCodeableConcept.coding[0] = $SCT#84114007 "hartfalen"


Instance: ProviderModule-Task-Informatie-Cholesterol
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Informatie-Cholesterol)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "TASK-88887"
* status = #received
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Wat is cholesterol en wat zijn de risico's?"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-23T07:00:00+01:00"
* lastModified = "2025-12-23T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"


Instance: ProviderModule-ActivityDefinition-Informatie-Thuismeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-Minddistrict)
* extension[1]
  * url = "http://example.org/fhir/StructureDefinition/client-id"
  * valueString = "dvaaanbiedersmodule"
* url = "https://aanbiedermodule.example.org/web/api/smartonfhir/launch?iss=resourceserver.example.dva.nl"
* version = "1.0.0"
* name = "Informatie over thuis bloeddruk meten"
* title = "Informatie over thuis bloeddruk meten"
* status = #active
* publisher = "Minddistrict"
* description = "Informatie over thuis bloeddruk meten"
* useContext[0]
  * code = $UCT#program
  * valueCodeableConcept.text = "Digitale zorgmodule CVRM"
* useContext[1]
  * code = $UCT#focus
  * valueCodeableConcept.coding[0] = $SCT#84114007 "hartfalen"

Instance: ProviderModule-Task-Informatie-Thuis-Bloeddrukmeten
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Informatie-Thuismeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "TASK-77774"
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Informatie over thuis bloeddruk meten"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-24T07:00:00+01:00"
* lastModified = "2025-12-24T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"


Instance: ProviderModule-ActivityDefinition-Vragenlijst-Uw-Situatie
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-Minddistrict)
* extension[1]
  * url = "http://example.org/fhir/StructureDefinition/client-id"
  * valueString = "dvaaanbiedersmodule"
* url = "https://aanbiedermodule.example.org/web/api/smartonfhir/launch?iss=resourceserver.example.dva.nl"
* version = "1.0.0"
* name = "Uw situatie op gebied van hart- en vaatziekten"
* title = "Vragenlijst over uw situatie op gebied van hart- en vaatziekten"
* status = #active
* publisher = "Minddistrict"
* description = "Vragenlijst over uw situatie op gebied van hart- en vaatziekten"
* useContext[0]
  * code = $UCT#program
  * valueCodeableConcept.text = "Digitale zorgmodule CVRM"
* useContext[1]
  * code = $UCT#focus
  * valueCodeableConcept.coding[0] = $SCT#84114007 "hartfalen"

Instance: ProviderModule-Task-Vragenlijst-Uw-Situatie
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Vragenlijst-Uw-Situatie)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "TASK-55553"
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Vragenlijst over uw situatie op gebied van hart- en vaatziekten"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-23T18:00:00+01:00"
* lastModified = "2025-12-23T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Endpoint-Minddistrict
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Endpoint
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an Endpoint as used in ProviderModule</div>"
* status = #active
* connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-rest
* managingOrganization = Reference(ProviderModule-Organization-Huisartsenpraktijk-Medrie)
* payloadType = $endpoint-payload-type#any
* address = "https://aanbiedermodule.example.org/web/api/smartonfhir/launch?iss=resourceserver.example.dva.nl"

Instance: ProviderModule-Patient-De-Groot
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Patiënt: Koos de Groot<br/>Geboortedatum: 1961-08-02<br/>Geslacht: Man<br/>Nationaliteit: Nederlandse<br/>Telefoon: +31612345600<br/>E-mail: tomvanduinen@tom.com<br/>Adres: Maanweg 174, 2516 AB Den Haag, Nederland</div>"
* extension[http://hl7.org/fhir/StructureDefinition/patient-nationality].extension[code].valueCodeableConcept = urn:oid:2.16.840.1.113883.2.4.4.16.32#0001 "Nederlandse"
* identifier
  * system = "http://fhir.nl/fhir/NamingSystem/bsn"
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked // gemaskeerd BSN
* name[0]
  * use = #official
  * text = "Koos de Groot"
  * family = "de Groot"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix].valueString = "de"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Groot"
  * given = "Koos"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #BR
* name[1]
  * use = #usual
  * given = "Koos"
* telecom[0]
  * system = #phone
    * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#MC "mobile contact"
  * value = "+31612345611"
* telecom[1]
  * system = #email
  * value = "koosdegrootn@koos.com"
  * use = #home
* gender = #male
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M "Male"
* birthDate = "1972-09-20"
* deceasedBoolean = false
* address
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-AddressInformation.AddressType].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#HP "primary home"
  * use = #home
  * type = #both
  * line = "Maanweg 174"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName].valueString = "Maanweg"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber].valueString = "174"
  * city = "Den Haag"
  * postalCode = "2516 AB"
  * country = "Nederland"
    * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept = urn:iso:std:iso:3166#NL "Netherlands"
