Profile: AanbiedersModuleActivityDefinition
Parent: ActivityDefinition
Id: AanbiedersModule-ActivityDefinition
Description: "The (FHIR) ActivityDefinition (resource) describes an eHealth activity that is available for assignment to a patient. When assigning an eHealth activity to a patient, an eHealth Task is created, in which sub-activities are included as contained resources that refer to the main task via Task.partOf."
* ^status = #draft
* insert PublisherAndContactMedMij
* insert Origin
* insert Copyright
* . 
  * ^definition = "Definition of a launchable eHealth activity (provider module) that can be assigned to patients, specifying its clinical intent and technical endpoint so that systems can consistently create Tasks and launch the module for a patient."
* extension contains
    $koppeltaal-endpoint named endpoint 1..* and
    $koppeltaal-publisher-id named publisherId 0..* and
    MedMijClientID named clientId 0..*
* extension[endpoint] ^short = "Endpoint to the service application"
  * ^definition = "Mandatory reference to the service application (endpoint) that provides the launchable eHealth activity. Can be more than one endpoint."
* url 1..
* title 1..
* useContext
  * ^definition = "The context for the content of the eHealth activity."
  * ^comment = "E.g. the activity is targeted to a certain age group."
* topic from http://vzvz.nl/fhir/ValueSet/koppeltaal-definition-topic (extensible)
  * ^short = "E.g. Self-Treatment and Self-Assessment, etc."
  * ^definition = "Descriptive topics related to the content of the activity. The topic is used to indicate that the activity is intended or suitable for initialization by patients."
  * ^binding.description = "High-level categorization of the definition, used for indicating special patient initialised activities"
