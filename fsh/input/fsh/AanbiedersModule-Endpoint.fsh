Profile: ProviderModuleEndpoint
Parent: Endpoint
Id: ProviderModule-Endpoint
Description: "The (FHIR) Endpoint (resource) is a representation of a technical contact point of an application that offers one or more eHealth services for a healthcare provider."
* ^status = #draft
* insert PublisherAndContactMedMij
* insert Origin
* connectionType from $koppeltaal-endpoint-connection-type-vs (extensible)
* managingOrganization only Reference(http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization)
