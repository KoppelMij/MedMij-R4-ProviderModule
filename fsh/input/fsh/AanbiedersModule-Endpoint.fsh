Profile: ProviderModuleEndpoint
Parent: Endpoint
Id: pm-Endpoint
Description: "The (FHIR) Endpoint (resource) is a representation of a technical contact point of an application that offers one or more launchable digital (eHealth) activities for a healthcare provider."
* ^status = #draft
* insert PublisherAndContactMedMij
* insert Origin
* extension contains MedMijClientID named clientId 0..*
* connectionType from $koppeltaal-endpoint-connection-type-vs (extensible)
* managingOrganization only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization)