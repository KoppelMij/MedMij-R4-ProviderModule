// All LogicalModels used in ProviderModule

Logical: LmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-Patient
Title: "Patient"
Description: "The person for whom the task is intended."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "This LogicalModel represents the Patient building block for patient use cases in the context of the ProviderModule"
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Patient"
* NameInformation 0..1 BackboneElement "Patient's full name."
  * ^alias = "Naamgegevens"
  * FirstNames 0..1 string "The first names of the patient."
    * ^alias = "Voornamen"
  * Initials 0..1 string "The initials of the patient."
    * ^alias = "Initialen"
  * LastName 0..1 BackboneElement "Container of the LastName concept. This container contains all data elements of the LastName concept."
    * ^alias = "Geslachtsnaam"
    * Prefix 0..1 string "Prefix to the last name of the patient."
      * ^alias = "Voorvoegsels"
    * LastName 0..1 string "The last name of the patient."
      * ^alias = "Achternaam"
* DateOfBirth 0..1 dateTime "Patient's date of birth."
  * ^alias = "Geboortedatum"
* Gender 0..1 CodeableConcept "Patient's administrative gender."
* Gender from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1--20200901000000 (required)
  * ^alias = "Geslacht"

Logical: LmActivityDefinition
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-ActivityDefinition
Title: "ActivityDefinition"
Description: "This activity definition describes launching an external application module from the EHR or portal as part of a clinical or administrative workflow. When applied, it creates a Task resource that requests launch of the configured application, including the necessary launch context such as user, patient, performer, etc., so that the receiving system can open the module in the correct session and context."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "The purpose of this activity definition is to describe a launchable application module itself, including a reference to the Endpoint resource that exposes the module. Systems can use this definition to know how and where to invoke the module, while separate Task resources are used to manage and track the patient specific workflow steps that require this module to be launched."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Module"
* ModuleEndpoint 0..1 Reference(Endpoint) "Endpoint to the service application."
  * ^alias = "Endpoint"
* Url 0..1 uri "URL of the launch endpoint for the module. Systems call this URL to start the associated application"
* Identifier 0..1 Identifier "Unique, stable content identifier for the provider module within its own domain. Enables unambiguous recognition of the same module, independent of endpoint URL or version."
* Version 0..1 string "Version identifier for this provider module, used to distinguish different published revisions of the same module."
  * ^alias = "Versie"
* Name 0..1 string "Name for this activity definition (computer friendly)"
  * ^alias = "ModuleNaam"
* Title 0..1 string "Name for this activity definition (human friendly)"
  * ^alias = "ModuleTitel"
* Subtitle 0..1 string "Describes the clinical usage of the activity definition."
  * ^alias = "ModuleSubTitel"
* Status 0..1 code "Status of the provider module (for example draft, active, retired). Indicates whether the module may be used in workflows."
  * ^alias = "ModuleStatus"
* Description 0..1 markdown "Human readable explanation of what this provider module does and how it should be used in the workflow."
  * ^alias = "ModuleOmschrijving"
* Timing 0..1 Timing "Timing of when this provider module should be offered or performed in the workflow, for example once, recurring, or before a specific appointment."
  * ^alias = "ModuleTijdschema"
* Usage 0..1 string "Describes the clinical usage of the activity definition."
  * ^alias = "ModuleGebruik"

Logical: LmTask
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-Task
Title: "Task"
Description: "Patient specific workflow item that requests execution of a provider module. Each Task represents an instance of “perform this module for this patient”, linking to the ActivityDefinition of the module and tracking its assignment, progress, and outcome within the care process."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "To represent and manage a concrete workflow request to perform a specific provider module for a patient. The Task coordinates assignment, handover, and status tracking between systems and roles, so that initiation and completion of the module are reliably monitored within the care process."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Taken"
* InstantiatesDefinition 0..1 canonical "Reference to ActivityDefinition definition."
  * ^alias = "ActivityDefinition"
* Identifier 0..1 Identifier "Business identifier that uniquely identifies this Task instance within or across systems, used to track the concrete provider module request in external workflows and integrations."
* BasedOn 0..* Reference(ServiceRequest) "ServiceRequest on which this Task is based, representing the clinical order for the provider module."
  * ^alias = "GebaseerdOp"
* PartOf 0..* Reference(Task) "Parent task of which this task is a part, used to link measurement subtasks to a main provider module task."
  * ^alias = "SubTaak"
* Status 0..1 code "Current state of the provider module request (for example requested, accepted, in progress, completed, cancelled), indicating where the Task is in the execution workflow."
  * ^alias = "TaakStatus"
* Intent 0..1 code "Distinguishes whether this provider module Task is a proposal, plan or full order to perform the module for the patient."
  * ^alias = "Bedoeling"
* Priority 0..1 code "Indicates how urgent it is to perform this provider module Task, for example routine, urgent or asap."
  * ^alias = "TaakPrioriteit"
* Code 0..1 CodeableConcept "Task Type"
* Code from http://hl7.org/fhir/smart-app-launch/CodeSystem/smart-codes (extensible)
  * ^alias = "TaakType"
* Description 0..1 string "Short, human readable explanation of what should be done in this Task for the provider module, shown to the assignee in the workflow."
  * ^alias = "TaakOmschrijving"
* For 0..1 Reference(Patient) "Patient for whom this provider module Task is requested and whose care and data the module relates to."
  * ^alias = "Voor"
* ExecutionPeriod 0..1 Period "Start and end time of execution."
  * ^alias = "Periode"
* AuthoredOn 0..1 dateTime "Date and time when this provider module Task was created."
  * ^alias = "AanmaakDatumTijd"
* LastModified 0..1 dateTime "Date and time when this provider module Task was last updated, for example after a status change or reassignment." 
  * ^alias = "LaatstGewijzigd"
* Requester 0..1 Reference(Practitioner) "Short, human readable explanation of what should be done in this Task for the provider module, shown to the assignee in the workflow."
  * ^alias = "Aanvrager"
* Owner 0..1 Reference(Patient) "Short, human readable explanation of what should be done in this Task for the provider module, shown to the assignee in the workflow."
  * ^alias = "TaakEigenaar"
* Restriction 0..1 BackboneElement "Constraints on performing this provider module Task. for example how many times it may be executed, within which period, and by which intended performers."
  * ^alias = "Frequentie"
  * Repetitions 0..1 positiveInt "How many times to repeat"
    * ^alias = "Herhaling"
  * Period 0..1 Period "Time window during which this Task restriction applies. for example the period in which the task may be performed."
    * ^alias = "Periode"
  * Recipient 0..1 Reference "Intended performer(s) for this provider module Task, such as the patient, a caregiver or a care team."

Logical: LmServiceRequest
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-ServiceRequest
Title: "ServiceRequest"
Description: "Clinical order for an eHealth activity (module) that a healthcare professional requests for a specific patient, such as filling out a questionnaire, performing home measurements, or watching an instruction video."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "To represent the clinical order from a healthcare professional to start a specific provider module for a patient. This ServiceRequest provides the clinical context for Tasks that execute the module."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Zorgopdracht"
* InstantiatesDefinition 0..1 canonical "Reference to the ActivityDefinition that defines the provider module."
  * ^alias = "ModuleDefinitie"
* Identifier 0..* Identifier "Business identifier that uniquely identifies this ServiceRequest within or across systems."
  * ^alias = "ZorgopdrachtID"
* Status 0..1 code "Current state of the service request (for example draft, active, completed, cancelled)."
  * ^alias = "ZorgopdrachtStatus"
* Intent 0..1 code "Indicates the level of authority or intention associated with the request, for example order or plan."
  * ^alias = "Bedoeling"
* Priority 0..1 code "Indicates how urgent it is to fulfil this service request, for example routine or urgent."
  * ^alias = "Prioriteit"
* Code 0..1 CodeableConcept "Type of ServiceRequest or eHealth activity being requested."
  * ^alias = "ZorgopdrachtType"
* Subject 1..1 Reference(Patient) "Patient for whom this provider module is requested."
  * ^alias = "Patiënt"
* patientInstruction 1..1 string "Patient specific instruction for how the requested module should be performed, for example home blood pressure monitoring for 8 weeks, once daily in the morning."
  * ^alias = "PatiëntenInstructie"
* Occurrence 0..1 Timing "Requested schedule for performing the provider module, such as duration, frequency and time of day."
  * ^alias = "Tijdschema"
* ReasonCode 0..* CodeableConcept "Clinical reason or indication for requesting this provider module."
  * ^alias = "Reden"
* Requester 0..1 Reference(Practitioner) "Healthcare professional or organization that requests this provider module for the patient."
  * ^alias = "Aanvrager"
* AuthoredOn 0..1 dateTime "Date and time when this service request was created."
  * ^alias = "AanmaakDatumTijd"
