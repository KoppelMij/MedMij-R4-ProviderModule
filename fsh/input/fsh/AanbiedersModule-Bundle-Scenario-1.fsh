// Bundle with FHIR test instances in FSH format for AanbiedersModule test scenario 1
Instance: AanbiedersModule-ServiceRequest-Glucosemeting
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-ServiceRequest
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ServiceRequest</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://{name}/servicerequest/id"
  * value = "123456"
* status = #active
* intent = #order
* subject = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* occurrenceTiming.repeat
  * boundsPeriod.start = "2025-12-22"
  * boundsPeriod.end = "2025-12-28"
  * period = 1
  * periodUnit = #d
  * frequency = 2
  * frequencyMax = 2
  * timeOfDay = "07:00:00"
  * timeOfDay = "18:00:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* patientInstruction = "Glucose metingen 1 week, 2x daags. Meet uw bloedglucose elke ochtend voor het ontbijt (nuchter). Meet uw bloedglucose elke avond voor het avondeten."

Instance: AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-ActivityDefinition
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an ActivityDefinition</div>"
* extension
  * url = "http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension"
  * valueReference = Reference(AanbiedersModule-Endpoint-Zorgmodule-Diabetes)
* url = "https://example.nl/web/zorgmodulediabetes/1234567"
* identifier
  * system = "http://{name}/content/id"
  * value = "123"
* version = "1.0.0"
* name = "Zorgmodule diabetes - Glucose metingen"
* title = "Glucose metingen"
* status = #active
* description = """
Beste patiënt,

U gaat gedurende 1 week zelf uw bloedglucose meten. Volg hierbij deze stappen:

1. Meet uw bloedglucose elke ochtend vóór het ontbijt (nuchter).
2. Meet uw bloedglucose elke avond vóór het avondeten.
3. Was uw handen met warm water en zeep en droog ze goed af.
4. Gebruik de prikpen en teststrip volgens de instructies van uw meter.
5. Noteer de waarden direct na de meting in uw dagboekje of app.
6. Voer dit dagelijks uit gedurende 7 dagen en neem de resultaten mee naar uw volgende afspraak.
"""

Instance: AanbiedersModule-Task-Bloedrukmeting-dag1-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-22T07:00:00+01:00"
* authoredOn = "2025-12-22T07:00:00+01:00"
* lastModified = "2025-12-22T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag1-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-22T18:00:00+01:00"
* authoredOn = "2025-12-22T18:00:00+01:00"
* lastModified = "2025-12-22T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag2-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-23T07:00:00+01:00"
* authoredOn = "2025-12-23T07:00:00+01:00"
* lastModified = "2025-12-23T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag2-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-23T18:00:00+01:00"
* authoredOn = "2025-12-23T18:00:00+01:00"
* lastModified = "2025-12-23T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag3-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-24T07:00:00+01:00"
* authoredOn = "2025-12-24T07:00:00+01:00"
* lastModified = "2025-12-24T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag3-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-24T18:00:00+01:00"
* authoredOn = "2025-12-24T18:00:00+01:00"
* lastModified = "2025-12-24T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag4-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-25T07:00:00+01:00"
* authoredOn = "2025-12-25T07:00:00+01:00"
* lastModified = "2025-12-25T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag4-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-25T18:00:00+01:00"
* authoredOn = "2025-12-25T18:00:00+01:00"
* lastModified = "2025-12-25T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag5-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-26T07:00:00+01:00"
* authoredOn = "2025-12-26T07:00:00+01:00"
* lastModified = "2025-12-26T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag5-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-26T18:00:00+01:00"
* authoredOn = "2025-12-26T18:00:00+01:00"
* lastModified = "2025-12-26T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag6-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-27T07:00:00+01:00"
* authoredOn = "2025-12-27T07:00:00+01:00"
* lastModified = "2025-12-27T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag6-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-27T18:00:00+01:00"
* authoredOn = "2025-12-27T18:00:00+01:00"
* lastModified = "2025-12-27T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag7-ochtend-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04178a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-28T07:00:00+01:00"
* authoredOn = "2025-12-28T07:00:00+01:00"
* lastModified = "2025-12-28T07:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Task-Bloedrukmeting-dag7-avond-Van-Duinen
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Task
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of a task</div>"
* extension
  * url = $koppeltaal-instantiates
  * valueReference = Reference(AanbiedersModule-ActivityDefinition-Zorgmodule-Diabetes)
    * type = "ActivityDefinition"
* identifier
  * system = "http://medmij.nl/taskIdentifier"
  * value = "cdf67e46-7a54-483f-8aa8-b9396c04342a"
* basedOn = Reference(AanbiedersModule-ServiceRequest-Glucosemeting)
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes#launch-app-standalone "Launch application using the SMART standalone launch"
* description = "Glucose meting"
* for = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"
* executionPeriod
  * start = "2025-12-28T18:00:00+01:00"
* authoredOn = "2025-12-28T18:00:00+01:00"
* lastModified = "2025-12-28T18:00:00+01:00"
* requester = Reference(AanbiedersModule-PractitionerRole-De-Haard) "A. de Haard, Huisarts"
* owner = Reference(AanbiedersModule-Patient-Van-Duinen) "Tom van Duinen"

Instance: AanbiedersModule-Endpoint-Zorgmodule-Diabetes
InstanceOf: http://medmij.nl/fhir/StructureDefinition/AanbiedersModule-Endpoint
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='nl-NL' lang='nl-NL'>Example of an Endpoint as used in AanbiedersModule</div>"
* status = #active
* connectionType = $koppeltaal-endpoint-connection-type#hti-smart-on-fhir
* managingOrganization = Reference(AanbiedersModule-Organization-Huisartsenpraktijk-Medrie)
* payloadType = $endpoint-payload-type#any
* address = "https://module.test.5im.nl/web/api/smartonfhir/launch"

Instance: AanbiedersModule-Patient-Van-Duinen
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Patiënt: Tom van Duinen<br/>Geboortedatum: 1961-08-02<br/>Geslacht: Man<br/>Nationaliteit: Nederlandse<br/>Telefoon: +31612345600<br/>E-mail: tomvanduinen@tom.com<br/>Adres: Maanweg 174, 2516 AB Den Haag, Nederland</div>"
* extension[http://hl7.org/fhir/StructureDefinition/patient-nationality].extension[code].valueCodeableConcept = urn:oid:2.16.840.1.113883.2.4.4.16.32#0001 "Nederlandse"
* identifier
  * system = "http://fhir.nl/fhir/NamingSystem/bsn"
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked // gemaskeerd BSN
* name[0]
  * use = #official
  * text = "Tom van Duinen"
  * family = "van Duinen"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix].valueString = "van"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Duinen"
  * given = "Erik"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #BR
* name[1]
  * use = #usual
  * given = "Tom"
* telecom[0]
  * system = #phone
    * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#MC "mobile contact"
  * value = "+31612345600"
* telecom[1]
  * system = #email
  * value = "tomvanduinen@tom.com"
  * use = #home
* gender = #male
  * extension[http://nictiz.nl/fhir/StructureDefinition/ext-CodeSpecification].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M "Male"
* birthDate = "1961-08-02"
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

Instance: AanbiedersModule-PractitionerRole-De-Haard
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Zorgverlenerrol: Huisarts, apotheekhoudend<br/>Zorgverlener: Haard, de<br/>Organisatie: Huisartsenpraktijk Medrie</div>"
* practitioner = Reference(AanbiedersModule-Practitioner-De-Haard) "A. de Haard"
* organization = Reference(AanbiedersModule-Organization-Huisartsenpraktijk-Medrie) "Huisartstenpraktijk Medrie"
* specialty
  * coding = urn:oid:2.16.840.1.113883.2.4.6.7#0110 "Huisarts, apotheekhoudend"

Instance: AanbiedersModule-Practitioner-De-Haard
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* text
  * status = #generated
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Zorgverlener: A. de Haard<br/>BIG-nummer: 12070100<br/>Telefoon: +31612345600<br/>E-mail: dehaard@huisarts.nl<br/>Adres: Simon Smitweg 1, 2353 GA Leiderdorp, Nederland</div>"
* identifier
  * system = "http://fhir.nl/fhir/NamingSystem/big"
  * value = "12070100"
* name
  * use = #official
  * text = "A. de Haard"
  * family = "de Haard"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix].valueString = "de"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Haard"
  * given[0] = "A."
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #IN
* telecom[0]
  * system = #phone
  * value = "+31612345600"
  * use = #work
* telecom[1]
  * system = #email
  * value = "dehaard@huisarts.nl"
  * use = #work

Instance: AanbiedersModule-Organization-Huisartsenpraktijk-Medrie
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