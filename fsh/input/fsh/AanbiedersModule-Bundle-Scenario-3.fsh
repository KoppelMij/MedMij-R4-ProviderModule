// Bundle with FHIR test instances in FSH format for ProviderModule test scenario 3

Instance: ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-HINQ)
* url = "https://example.com/activities/zorgmodulecopd"
* extension[1]
  * url = $client-id
  * valueString = "dvaaanbiedersmodule"
* version = "1.0.0"
* name = "Meetopdacht saturatiemeting"
* title = "Saturatiemeting"
* status = #active
* publisher = "HinqZNO"
* description = "Saturatiemeting volgens NHG protocol. 1 week, 1x per dag"
* timingTiming.repeat
  * boundsDuration.value = 7
  * boundsDuration.system = "http://unitsofmeasure.org"
  * boundsDuration.code = #d
  * boundsDuration.unit = "day"
  * frequency = 1
  * period = 1
  * periodUnit = #d

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-1
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-11"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-05"
  * end = "2026-01-05"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-2
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-22"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* partOf= Reference(ProviderModule-Task-Meetopdracht-Saturatiemeting-1)
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-06"
  * end = "2026-01-06"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-3
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-33"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* partOf= Reference(ProviderModule-Task-Meetopdracht-Saturatiemeting-2)
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-07"
  * end = "2026-01-07"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-4
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-44"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* partOf= Reference(ProviderModule-Task-Meetopdracht-Saturatiemeting-3)
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-08"
  * end = "2026-01-08"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-5
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-55"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* partOf= Reference(ProviderModule-Task-Meetopdracht-Saturatiemeting-4)
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-09"
  * end = "2026-01-09"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-6
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-66"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* partOf= Reference(ProviderModule-Task-Meetopdracht-Saturatiemeting-5)
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-10"
  * end = "2026-01-10"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Task-Meetopdracht-Saturatiemeting-7
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Meetopdracht-Saturatiemeting)
    * type = "ActivityDefinition"
* identifier
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-77"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* partOf= Reference(ProviderModule-Task-Meetopdracht-Saturatiemeting-6)
* status = #received
* intent = #order
* priority = #routine
* description = "Meet je zuurstofsaturatie (SpO2) met de saturatiemeter"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2026-01-11"
  * end = "2026-01-11"
* authoredOn = "2026-01-05T08:00:00+01:00"
* lastModified = "2026-01-05T08:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"


Instance: ProviderModule-ActivityDefinition-Informatie-leven-COPD
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-HINQ)
* url = "https://example.com/activities/zorgmodulecopd"
* extension[1]
  * url = $client-id
  * valueString = "dvaaanbiedersmodule"
* version = "1.0.0"
* name = "Informatie over leven met COPD"
* title = "Informatie over leven met COPD"
* status = #active
* publisher = "HinqZNO"
* description = "Dit is een algemene informatie over leven met COPD"


Instance: ProviderModule-Task-Informatie-leven-COPD
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
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-1673834"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* status = #received
* intent = #order
* priority = #routine
* description = "Lees de informatie over leven met COPD"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-23T07:00:00+01:00"
* lastModified = "2025-12-23T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"


Instance: ProviderModule-ActivityDefinition-Informatie-Thuismeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-HINQ)
* url = "https://example.com/activities/zorgmodulecopd"
* extension[1]
  * url = $client-id
  * valueString = "dvaaanbiedersmodule"
* version = "1.0.0"
* name = "Informatie over thuis bloeddruk meten"
* title = "Informatie over thuis bloeddruk meten"
* status = #active
* publisher = "HinqZNO"
* description = "Informatie over thuis bloeddruk meten"

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
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-983823471"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* status = #requested
* intent = #order
* priority = #routine
* description = "Informatie over thuis bloeddruk meten"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-24T07:00:00+01:00"
* lastModified = "2025-12-24T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"


Instance: ProviderModule-ActivityDefinition-Vragenlijst-Uw-Situatie
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension[0]
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(ProviderModule-Endpoint-HINQ)
* url = "https://example.com/activities/zorgmodulecopd"
* extension[1]
  * url = $client-id
  * valueString = "dvaaanbiedersmodule"
* version = "1.0.0"
* name = "Uw situatie op gebied van hart- en vaatziekten"
* title = "Vragenlijst over uw situatie op gebied van hart- en vaatziekten"
* status = #active
* publisher = "HinqZNO"
* description = "Vragenlijst over uw situatie op gebied van hart- en vaatziekten"


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
  * system = "http://hinq.nl/taskIdentifier"
  * value = "TASK-74745858"
* groupIdentifier
  * system = "https://hinq.nl/fhir/identifiers/task-group"
  * value = "module-COPD-2026"
  * type.text = "Digitale zorgmodule COPD"
* status = #requested
* intent = #order
* priority = #routine
* description = "Vragenlijst over uw situatie op gebied van hart- en vaatziekten"
* for = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-23T18:00:00+01:00"
* lastModified = "2025-12-23T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-Van-Rijn) "M. van Rijn, Huisarts"
* owner = Reference(ProviderModule-Patient-Van-Dijk) "Sanne van Dijk"

Instance: ProviderModule-Patient-Van-Dijk
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Patiënt: Sanne van Dijk<br/>Geboortedatum: 1984-03-14<br/>Geslacht: Vrouw<br/>Nationaliteit: Nederlandse<br/>Telefoon: +31655501234<br/>E-mail: sanne.vandijk@voorbeeldmail.nl<br/>Adres: Prinsengracht 263, 1016 GV Amsterdam, Nederland</div>"
* extension[http://hl7.org/fhir/StructureDefinition/patient-nationality].extension[code].valueCodeableConcept = urn:oid:2.16.840.1.113883.2.4.4.16.32#0001 "Nederlandse"
* identifier
  * system = "http://fhir.nl/fhir/NamingSystem/bsn"
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked // gemaskeerd BSN
* name[0]
  * use = #official
  * text = "Sanne van Dijk"
  * family = "van Dijk"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix].valueString = "van"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Dijk"
  * given = "Sanne"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #BR
* name[1]
  * use = #usual
  * given = "Sanne"
* telecom[0]
  * system = #phone
    * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#MC "mobile contact"
  * value = "+31655501234"
* telecom[1]
  * system = #email
  * value = "sanne.vandijk@voorbeeldmail.nl"
  * use = #home
* gender = #female
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F "Female"
* birthDate = "1984-03-14"
* deceasedBoolean = false
* address
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-AddressInformation.AddressType].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#HP "primary home"
  * use = #home
  * type = #both
  * line = "Prinsengracht 263"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName].valueString = "Prinsengracht"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber].valueString = "263"
  * city = "Amsterdam"
  * postalCode = "1016 GV"
  * country = "Nederland"
    * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept = urn:iso:std:iso:3166#NL "Netherlands"

Instance: ProviderModule-PractitionerRole-Van-Rijn
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Zorgverlenerrol: Huisarts, apotheekhoudend<br/>Zorgverlener: Haard, de<br/>Organisatie: Huisartsenpraktijk Medrie</div>"
* practitioner = Reference(ProviderModule-Practitioner-Van-Rijn) "M. van Rijn"
* organization = Reference(ProviderModule-Organization-Huisartsenpraktijk-Medrie) "Huisartstenpraktijk Medrie"
* specialty
  * coding = urn:oid:2.16.840.1.113883.2.4.6.7#0110 "Huisarts, apotheekhoudend"

Instance: ProviderModule-Practitioner-Van-Rijn
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Zorgverlener: M. van Rijn<br/>BIG-nummer: 19078234<br/>Telefoon: +31655506789<br/>E-mail: m.vanrijn@huisartspraktijk-example.nl<br/>Adres: Laan van Meerdervoort 120, 2517 AV Den Haag, Nederland</div>"
* identifier
  * system = "http://fhir.nl/fhir/NamingSystem/big"
  * value = "19078234"
* name
  * use = #official
  * text = "M. van Rijn"
  * family = "van Rijn"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix].valueString = "van"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Rijn"
  * given[0] = "M."
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #IN
* telecom[0]
  * system = #phone
  * value = "+31655506789"
  * use = #work
* telecom[1]
  * system = #email
  * value = "m.vanrijn@huisartspraktijk-example.nl"
  * use = #work

Instance: ProviderModule-Organization-Huisartsenpraktijk-Medrie
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Organisatie: Huisartsenpraktijk <br/>AGB-code: 01010235<br/>Telefoon: +31653603740<br/>E-mail: huisartsenpraktijk-dehaard@huisarts.nl<br/>Adres: Dr. Klinkertweg 18, 8004 DB Zwolle</div>"
* identifier
  * system = "http://fhir.nl/fhir/NamingSystem/agb-z"
  * value = "01010235"
* name = "Ondersteuning Huisartsenpraktijk Medrie Bv"
* telecom[0]
  * system = #phone
  * value = "+31653603740"
  * use = #work
* telecom[1]
  * system = #email
  * value = "huisartsenpraktijk-dehaard@huisarts.nl"
  * use = #work
* address
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-AddressInformation.AddressType].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#WP "Work Place"
  * use = #work
  * line = "Dr. Klinkertweg 18"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName].valueString = "Dr. Klinkertweg"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber].valueString = "18"
  * city = "Zwolle"
  * postalCode = "8004 DB"