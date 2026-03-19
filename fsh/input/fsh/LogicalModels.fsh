// All LogicalModels used in ProviderTasks

Logical: LmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: pt-lm-Patient
Title: "Patient"
Description: "The person for whom the task is intended."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "This LogicalModel represents the Patient building block for patient use cases in the context of the ProviderTasks"
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

Logical: LmActivity
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: pt-lm-Activit
Title: "Digital Activity"
Description: "Reusable definition of a digital activity (module) that can be selected by a healthcare professional and presented to a patient as part of the care process. The activity describes what the patient will do (e.g., read information, complete a questionnaire, perform a home measurement) and provides the information needed to start or access the activity when applicable."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "To describe a reusable digital activity that can be selected and assigned by a healthcare professional to support the care process for a patient. The activity provides patient-facing content or actions (e.g., information, questionnaires, or home measurements)."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Digitale Activiteit"
* Title 0..1 string "Short, human-friendly title for the digital activity."
  * ^alias = "Titel"
* Status 0..1 code "Lifecycle status of the digital activity (e.g., draft, active, retired). A retired activity can no longer be selected or assigned."
  * ^alias = "Status"
* Publisher 0..1 string "Organization responsible for the content/functionality of this digital activity and its maintenance."
* Description 0..1 markdown "Guidance on how this digital activity should be used in clinical workflows."
  * ^alias = "Omschrijving"
* Timing 0..1 Timing "Generic recommendation for how often/when the activity is typically performed. Patient-specific scheduling belongs in the clinical order (e.g., ServiceRequest)."
  * ^alias = "Tijdschema"

Logical: LmTask
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: pt-lm-Task
Title: "Task"
Description: "Patient-specific workflow item that requests execution of a defined digital activity. Each Task represents an instance of “perform this activity for this patient”, optionally linking to an ActivityDefinition that describes the launchable activity."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "To represent and manage a concrete patient-specific request to perform a digital activity. The Task supports assignment, handover, and status tracking between systems and roles, so that initiation and completion of the activity can be monitored within the care process. The Task can be used in both MedMij and Koppeltaal implementations (client applications such as a PGO are one possible presentation layer)."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Taken"
* Instantiates 0..1 BackboneElement "Link to the definitional activity that this Task instantiates."
  * ^short = "Instantiates ActivityDefinition"
  * ^definition = "A link to the ActivityDefinition that defines the launchable digital activity (i.e., what module/content should be launched or performed) associated with this Task. In both MedMij and Koppeltaal implementations, this link is carried using the Koppeltaal instantiates extension."
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
Id: pt-lm-ServiceRequest
Title: "ServiceRequest"
Description: "Patient-specific clinical order for a digital activity that a healthcare professional requests for a patient, such as completing a questionnaire, performing home measurements, viewing educational content, or launching a third-party module."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* ^purpose = "To represent the clinical order to start or perform a specific digital activity for a patient. This ServiceRequest provides the clinical intent, context, requested schedule, and patient-specific instructions, and can serve as the basis for one or more Task resources that manage execution and tracking of the activity."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Zorgopdracht"
* Identifier 0..* Identifier "Business identifier that uniquely identifies this ServiceRequest within or across systems."
  * ^alias = "Identifier"
* Status 0..1 code "Current state of the service request (e.g. draft, active, completed, cancelled)."
  * ^alias = "Status"
* Intent 0..1 code "Indicates the level of authority or intention associated with the request (e.g., order or plan)."
  * ^alias = "Bedoeling"
* Subject 1..1 Reference(Patient) "Patient for whom the digital activity is requested."
  * ^alias = "Patiënt"
* patientInstruction 1..1 string "Patient or consumer-oriented instructions for how the requested activity should be performed. Use this element for patient-specific guidance that should be shown alongside the Task(s) executing this order (e.g., home blood pressure monitoring for 8 weeks, once daily in the morning)."
  * ^alias = "PatiëntenInstructie"
* Occurrence 0..1 Timing "Requested schedule for performing the provider module, such as duration, frequency and time of day."
  * ^alias = "Tijdschema"
* Requester 0..1 Reference(PractitionerRole) "Healthcare professional role that requests this activity for the patient."
  * ^alias = "Aanvrager"
* AuthoredOn 0..1 dateTime "Date and time when this service request was created."
  * ^alias = "AanmaakDatumTijd"

Logical: LmEnpoint
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: pt-lm-Endpoint
Title: "Endpoint"
Description: "This (FHIR) Endpoint profile represents the technical FHIR REST endpoint of a source system (XIS), used by a ProviderModule to retrieve and update task data and the required context for the ProviderModule use case."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContactMedMij
* insert Copyright
* ^abstract = true
* .
* ClientId 0..1 string "Client identifier used as 'audience' in the DVA token exchange (Endpoint extension)."
  * ^comment = "Maps to Endpoint.extension('http://medmij.nl/fhir/StructureDefinition/ext-ClientID').valueString"
* managingOrganization 0..1 Reference(Organization) "The organization responsible for operating and maintaining this FHIR REST endpoint (the source system/XIS) that exposes ProviderModule task data and related context."
* Adress 0..1 dateTime "FHIR resource endpoint"
