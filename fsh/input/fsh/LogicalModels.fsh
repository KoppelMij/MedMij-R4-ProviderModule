// All LogicalModels used in AanbiedersModule

Logical: LmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-Patient
Title: "Patient"
Description: "The person for whom the task is intended."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Patient building block for patient use cases in the context of the AanbiedersModule"
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
* insert PublisherAndContact
* ^purpose = "The purpose of this activity definition is to describe a launchable application module itself, including a reference to the Endpoint resource that exposes the module. Systems can use this definition to know how and where to invoke the module, while separate Task resources are used to manage and track the patient specific workflow steps that require this module to be launched."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Module"
* Extension 0..1 "Endpoint tot the service application"
* Extension from http://koppeltaal.nl/fhir/StructureDefinition/KT2EndpointExtension
  * ^alias = "Endpoint"
* Url 0..1 "URL of the launch endpoint for the module. Systems call this URL to start the associated application"
* Identifier 0..1 "Unique, stable content identifier for the provider module within its own domain. Enables unambiguous recognition of the same module, independent of endpoint URL or version."
* Version 0..1 "Version identifier for this provider module, used to distinguish different published revisions of the same module."
  * ^alias = "Versie"
* Name 0..1 "Name for this activity definition (computer friendly)"
  * ^alias = "ModuleNaam"
* Title 0..1 "Name for this activity definition (human friendly)"
      * ^alias = "ModuleTitel"
* Subtitle 0..1 "Describes the clinical usage of the activity definition."
  * ^alias = "ModuleSubTitel"
* Status 0..1 "Status of the provider module (for example draft, active, retired). Indicates whether the module may be used in workflows."
  * ^alias = "ModuleStatus"
* Description 0..1 "Human readable explanation of what this provider module does and how it should be used in the workflow."
  * ^alias = "ModuleOmschrijving"
* Timing 0..1 "Timing of when this provider module should be offered or performed in the workflow, for example once, recurring, or before a specific appointment."
  * ^alias = "ModuleTijdschema"
* Usage 0..1 "Describes the clinical usage of the activity definition."
  * ^alias = "ModuleGebruik"

Logical: LmTask
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-Task
Title: "Task"
Description: "Patient specific workflow item that requests execution of a provider module. Each Task represents an instance of “perform this module for this patient”, linking to the ActivityDefinition of the module and tracking its assignment, progress, and outcome within the care process."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "To represent and manage a concrete workflow request to perform a specific provider module for a patient. The Task coordinates assignment, handover, and status tracking between systems and roles, so that initiation and completion of the module are reliably monitored within the care process."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Taken"
* Extension 0..1 "Reference to ActivityDefinition"
* Extension from http://vzvz.nl/fhir/StructureDefinition/instantiates
  * ^alias = "ActivityDefinition"
* Identifier 0..1 "Business identifier that uniquely identifies this Task instance within or across systems, used to track the concrete provider module request in external workflows and integrations."
* Status 0..1 "Current state of the provider module request (for example requested, accepted, in progress, completed, cancelled), indicating where the Task is in the execution workflow."
  * ^alias = "TaakStatus"
* Intent 0..1 "Distinguishes whether this provider module Task is a proposal, plan or full order to perform the module for the patient."
  * ^alias = "Bedoeling"
* Priority 0..1 "Indicates how urgent it is to perform this provider module Task, for example routine, urgent or asap."
  * ^alias = "TaakPrioriteit"
* Description 0..1 "Short, human readable explanation of what should be done in this Task for the provider module, shown to the assignee in the workflow."
  * ^alias = "TaakOmschrijving"
* For 0..1 "Patient for whom this provider module Task is requested and whose care and data the module relates to."
  * ^alias = "Voor"
* ExecutionPeriod 0..1 "Start and end time of execution."
  * ^alias = "Periode"
* AuthoredOn 0..1 "Date and time when this provider module Task was created."
  * ^alias = "AanmaakDatumTijd"
* LastModified 0..1 "Date and time when this provider module Task was last updated, for example after a status change or reassignment." 
  * ^alias = "LaatstGewijzigd"
* Requester 0..1 "Short, human readable explanation of what should be done in this Task for the provider module, shown to the assignee in the workflow."
  * ^alias = "Aanvrager"
* Owner 0..1 "Short, human readable explanation of what should be done in this Task for the provider module, shown to the assignee in the workflow."
  * ^alias = "TaakEigenaar"
