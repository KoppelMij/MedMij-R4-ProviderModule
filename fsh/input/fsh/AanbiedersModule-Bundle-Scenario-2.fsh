// Bundle with FHIR test instances in FSH format for ProviderModule test scenario 2
Instance: ProviderModule-ServiceRequest-Glucosemeting-De-Groot
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-ServiceRequest
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ServiceRequest</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie/servicerequest/id"
  * value = "2025-0000123456"
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
  * timeOfDay = "07:00:00"
  * timeOfDay = "18:00:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* patientInstruction = """
Beste patiënt,

U gaat gedurende 1 week zelf uw bloedglucose meten. Volg hierbij deze stappen:

1. Meet uw bloedglucose elke ochtend vóór het ontbijt (nuchter).
2. Meet uw bloedglucose elke avond vóór het avondeten.
3. Was uw handen met warm water en zeep en droog ze goed af.
4. Gebruik de prikpen en teststrip volgens de instructies van uw meter.
5. Noteer de waarden direct na de meting in uw dagboekje of app.
6. Voer dit dagelijks uit gedurende 7 dagen en neem de resultaten mee naar uw volgende afspraak.
"""

Instance: ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-22T07:00:00+01:00"
* lastModified = "2025-12-22T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag1-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22T07:00:00+01:00"
* authoredOn = "2025-12-22T07:00:00+01:00"
* lastModified = "2025-12-22T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag1-avond
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22T18:00:00+01:00"
* authoredOn = "2025-12-22T18:00:00+01:00"
* lastModified = "2025-12-22T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag2-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-23T07:00:00+01:00"
* authoredOn = "2025-12-23T07:00:00+01:00"
* lastModified = "2025-12-23T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag2-avond
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-23T18:00:00+01:00"
* authoredOn = "2025-12-23T18:00:00+01:00"
* lastModified = "2025-12-23T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag3-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-24T07:00:00+01:00"
* authoredOn = "2025-12-24T07:00:00+01:00"
* lastModified = "2025-12-24T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag3-avond
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-24T18:00:00+01:00"
* authoredOn = "2025-12-24T18:00:00+01:00"
* lastModified = "2025-12-24T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag4-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-25T07:00:00+01:00"
* authoredOn = "2025-12-25T07:00:00+01:00"
* lastModified = "2025-12-25T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag4-avond
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-25T18:00:00+01:00"
* authoredOn = "2025-12-25T18:00:00+01:00"
* lastModified = "2025-12-25T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag5-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-26T07:00:00+01:00"
* authoredOn = "2025-12-26T07:00:00+01:00"
* lastModified = "2025-12-26T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag5
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-26T18:00:00+01:00"
* authoredOn = "2025-12-26T18:00:00+01:00"
* lastModified = "2025-12-26T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag6-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-27T07:00:00+01:00"
* authoredOn = "2025-12-27T07:00:00+01:00"
* lastModified = "2025-12-27T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag6
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-27T18:00:00+01:00"
* authoredOn = "2025-12-27T18:00:00+01:00"
* lastModified = "2025-12-27T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag7-ochtend
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-28T07:00:00+01:00"
* authoredOn = "2025-12-28T07:00:00+01:00"
* lastModified = "2025-12-28T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Subtaak-Meetopdracht-Glucosemeting-dag7-avond
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(ProviderModule-ServiceRequest-Glucosemeting-De-Groot)
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-28T18:00:00+01:00"
* authoredOn = "2025-12-28T18:00:00+01:00"
* lastModified = "2025-12-28T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Task-Subtaak-Informatie-Diabetes-De-Groot
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #received
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Wat is diabetes?"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-23T07:00:00+01:00"
* lastModified = "2025-12-23T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Task-Subtaak-Vragenlijst-WoonLeefsituatie-Groot
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Vragenlijst woon/leefsituatie"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-23T18:00:00+01:00"
* lastModified = "2025-12-23T18:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Task-Subtaak-Informatie-GezonderLeven-De-Groot
InstanceOf: http://medmij.nl/fhir/StructureDefinition/ProviderModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(ProviderModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medrie.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* partOf = Reference(ProviderModule-Task-Hoofdtaak-Zorgmodule-Diabetes-De-Groot)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"
* executionPeriod
  * start = "2025-12-22"
  * end = "2025-12-28"
* authoredOn = "2025-12-24T07:00:00+01:00"
* lastModified = "2025-12-24T07:00:00+01:00"
* requester = Reference(ProviderModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(ProviderModule-Patient-De-Groot) "Koos de Groot"

Instance: ProviderModule-Endpoint-Zorgmodule-Diabetes-De-Groot
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
