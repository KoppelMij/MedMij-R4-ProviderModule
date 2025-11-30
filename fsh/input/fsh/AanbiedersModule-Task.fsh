Profile: AanbiedersModuleTask
Parent: Task
Id: AanbiedersModule-Task
Description: "The (FHIR) Task (resource) describes an eHealth task, that is, an eHealth activity assigned to a patient."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContactMedMij
* ^purpose = "KoppelMij allows a patient, from the portal or from a personal health environment (PGO), to use a module (from a third party) at the instruction of the healthcare provider (for example, to complete a questionnaire)."
* insert Copyright
* .
  * ^short = "Task"
  * ^alias = "Taak"
* insert Origin
* .
^definition = "An eHealth activity assigned to a patient."
* extension contains $koppeltaal-instantiates named instantiates 0..*
  * ^short = "Reference to ActivityDefinition" 
  * ^definition = "Reference to the ActivityDefinition, which conforms to the MedMij ActivityDefinition profile."
  * valueReference only Reference(AanbiedersModule-ActivityDefinition)
* partOf only Reference(AanbiedersModule-Task)
* code from http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes (extensible)
* code ^comment = "Codes to identify what the task involves. These will typically be specific to a particular workflow."
* for 1..
* for only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient)
  * ^definition = "The patient who benefits from the performance of the service specified in the task."
  * ^comment = "In AanbiedersModule this element always refers to the patient for whom the task is intended."
  * ^requirements = "Used to track tasks outstanding for a beneficiary. Do not use to track the task owner or creator (see owner and creator respectively). This can also affect access control."
* requester only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)
  * ^comment = """
    Each occurrence of the zib HealthProfessional is normally represented by _two_ FHIR resources: a PractitionerRole resource (instance of [nl-core-HealthProfessional-PractitionerRole](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)) and a Practitioner resource (instance of [nl-core-HealthProfessional-Practitioner](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance here, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.

    In rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced here. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is not explicitly mentioned as a target profile.
    """
  * ^definition = "In Koppeltaal this element contains a reference to the person requesting the eHealth Task"
* owner 1..
* owner only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-CareTeam or http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole or http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson)
  * ^definition = "Practitioner, CareTeam, RelatedPerson or Patient currently responsible for task execution."
  * ^comment = "In Koppeltaal the patient is usually the person who executes the task.\r\n\r\nNote, this element is not intended to be used for access restriction. That is left to the relevant applications.\r\n\r\nEach occurrence of the zib HealthProfessional is normally represented by two FHIR resources: a PractitionerRole resource (instance of [nl-core-HealthProfessional-PractitionerRole](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)) and a Practitioner resource (instance of [nl-core-HealthProfessional-Practitioner](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance here, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.\r\n\r\nIn rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced here. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is not explicitly mentioned as a target profile."