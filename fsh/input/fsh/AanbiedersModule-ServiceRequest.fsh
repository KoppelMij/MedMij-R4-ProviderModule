Profile: ProviderModuleServiceRequest
Parent: ServiceRequest
Id: ProviderModule-ServiceRequest
Description: "Clinical order for an eHealth activity (module) that a healthcare professional requests for a specific patient, such as filling out a questionnaire, performing home measurements, or watching an instruction video."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContactMedMij
* ^purpose = "To represent the clinical order from a healthcare professional to start a specific provider module for a patient. This ServiceRequest provides the clinical context for Tasks that execute the module."
* insert Copyright
* .
  * ^short = "ServiceRequest"
  * ^alias = "Zorgopdracht"
* insert Origin
* .
^definition = "Patient specific clinical order for starting an eHealth activity (provider module) in the ProviderModule context. Links the patient, the requested module, the intended schedule and clinical reason, and provides the basis for Tasks that carry out the module."
* extension contains $koppeltaal-instantiates named instantiates 0..*
  * ^short = "Reference to ActivityDefinition" 
  * ^definition = "Reference to the ActivityDefinition, which conforms to the MedMij ActivityDefinition profile."
  * valueReference only Reference(ProviderModule-ActivityDefinition)
* subject only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient)
* requester only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)
  * ^comment = """
    Each occurrence of the zib HealthProfessional is normally represented by _two_ FHIR resources: a PractitionerRole resource (instance of [nl-core-HealthProfessional-PractitionerRole](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)) and a Practitioner resource (instance of [nl-core-HealthProfessional-Practitioner](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance here, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.

    In rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced here. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is not explicitly mentioned as a target profile.
    """