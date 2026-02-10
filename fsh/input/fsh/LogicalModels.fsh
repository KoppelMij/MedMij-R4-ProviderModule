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
* ModuleEndpoint 0..1 Reference(Endpoint) "Endpoint that exposes the launch service."
  * ^alias = "Endpoint"
* ClientId 0..1 string "Client identifier used by the receiving module (if applicable)."
  * ^alias = "Client-ID"
* Identifier 0..1 Identifier "Business identifier that uniquely identifies this ActivityDefinition instance within or across systems."
* Version 0..1 string "Version identifier for this provider module, used to distinguish different published revisions of the same module."
  * ^alias = "Versie"
* Name 0..1 string "Name for this activity definition (computer friendly)"
  * ^alias = "ModuleNaam"
* Title 0..1 string "Name for this activity definition (human friendly)"
  * ^alias = "ModuleTitel"
* Status 0..1 code "Status of the provider module (for example draft, active, retired). Indicates whether the module may be used in workflows."
  * ^alias = "ModuleStatus"
* Publisher 0..1 string "Organization responsible for publishing this activity definition. The publisher owns the content and/or functionality and manages versioning."
* Description 0..1 markdown "Human readable explanation of what this provider module does and how it should be used in the workflow."
  * ^alias = "ModuleOmschrijving"
* Timing 0..1 Timing "Timing of when this provider module should be offered or performed in the workflow, for example once, recurring, or before a specific appointment."
  * ^alias = "ModuleTijdschema"

Logical: LmTask
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: am-lm-Task
Title: "Task"
Description: "Patient-specific workflow item that requests execution of a defined digital (eHealth) activity. Each Task represents an instance of “perform this activity for this patient”, optionally linking to an ActivityDefinition that describes the launchable activity."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "To represent and manage a concrete patient-specific request to perform a digital (eHealth) activity. The Task supports assignment, handover, and status tracking between systems and roles, so that initiation and completion of the activity can be monitored within the care process. The Task can be used in both MedMij and Koppeltaal implementations (client applications such as a PGO are one possible presentation layer)."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Taken"
* Instantiates 0..1 BackboneElement "Link to the definitional activity that this Task instantiates."
  * ^short = "Instantiates ActivityDefinition"
  * ^definition = "A link to the ActivityDefinition that defines the launchable eHealth activity (i.e., what module/content should be launched or performed) associated with this Task. In both MedMij and Koppeltaal implementations, this link is carried using the Koppeltaal instantiates extension."
  * ActivityDefinition 0..1 Reference(ActivityDefinition) "Reference to the ActivityDefinition that describes the activity to launch/perform."
    * ^alias = "ActivityDefinition"
* Identifier 0..1 Identifier "Business identifier that uniquely identifies this Task instance within or across systems."
* GroupIdentifier 0..1 Identifier "Identifier used to group related tasks (e.g., tasks belonging to the same digital care module/program)."
  * ^alias = "GroepIdentifier"
* BasedOn 0..1 Reference(ServiceRequest) "Order(s) on which this Task is based. Typically a ServiceRequest represents the clinical order that triggered this patient-facing activity, and it may also carry patient-specific instructions for the activity (e.g., via ServiceRequest.patientInstruction)."
  * ^alias = "GebaseerdOp"
* PartOf 0..1 Reference(Task) "Parent task of which this task is a part. Used to link subtasks (e.g., individual measurement moments) to a main task."
  * ^alias = "SubTaak"
* Status 0..1 code "Current state of the Task in the workflow (e.g., requested, received, accepted, in-progress, completed, cancelled)."
  * ^alias = "TaakStatus"
* Intent 0..1 code "Indicates whether the Task is a proposal, plan, or order. For patient-facing activities this will typically be an order."
  * ^alias = "Bedoeling"
* Priority 0..1 code "Indicates how urgent it is to perform the activity (e.g., routine, urgent, asap)."
  * ^alias = "TaakPrioriteit"
* Description 0..1 string "Short, human-readable description of what should be done. Keep the text concise and readable on mobile applications."
  * ^alias = "TaakOmschrijving"
* For 1..1 Reference(Patient) "The patient for whom the Task is intended."
  * ^alias = "Voor"
* ExecutionPeriod 0..1 Period "Time window in which the Task is expected or allowed to be performed (start/end)."
  * ^alias = "Periode"
* AuthoredOn 0..1 dateTime "Date and time when the Task was created."
  * ^alias = "AanmaakDatumTijd"
* LastModified 0..1 dateTime "Date and time when the Task was last updated (e.g., after status change, edits, or reassignment)." 
  * ^alias = "LaatstGewijzigd"
* Requester 0..1 Reference(PractitionerRole) "The person or role who requested or initiated this Task."
  * ^alias = "Aanvrager"
* Owner 1..1 Reference(Patient) "The actor currently responsible for performing the Task"
  * ^alias = "TaakEigenaar"
* Restriction 0..1 BackboneElement "Constraints on performing this Task, such as how many times it may be executed, within which period, and by which intended performers."
  * ^alias = "Frequentie"
  * Repetitions 0..1 positiveInt "How many times to repeat"
    * ^alias = "Herhaling"
  * Period 0..1 Period "Time window during which this Task restriction applies. For example the period in which the task may be performed."
    * ^alias = "GeldigBinnen"

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
* Requester 0..1 Reference(PractitionerRole) "Healthcare professional or organization that requests this provider module for the patient."
  * ^alias = "Aanvrager"
* AuthoredOn 0..1 dateTime "Date and time when this service request was created."
  * ^alias = "AanmaakDatumTijd"
