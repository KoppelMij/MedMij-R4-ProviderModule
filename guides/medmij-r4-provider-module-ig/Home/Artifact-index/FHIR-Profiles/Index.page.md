---
topic: FHIRProfilesIndex
---

# FHIR profiles
## Task-specific profiles
The following FHIR profiles have been introduced for the ProviderTask standard:

| CIM (concept) | FHIR resource | FHIR profile |
| --- | --- | --- |
| {{pagelink: LogicalModelsIndex, text: Patient, anchor: pm-lm-Patient}} | Patient | {{pagelink: FHIRProfilesIndex, text: nl-core-patient, anchor: https://simplifier.net/nictiz-r4-zib2020/nlcorepatient}} |
| {{pagelink: LogicalModelsIndex, text: Request, anchor: PathLmRequest}} | ServiceRequest | {{pagelink: FHIRProfilesIndex, text: path-Request, anchor: PathRequest}} |
| {{pagelink: LogicalModelsIndex, text: Request (Requester), anchor: PathLmRequest}} | PractitionerRole | {{pagelink: FHIRProfilesIndex, text: path-Request.Requester, anchor: PathRequestRequester}} |
| {{pagelink: LogicalModelsIndex, text: Request (Specimen), anchor: PathLmRequest}} | Specimen | {{pagelink: FHIRProfilesIndex, text: path-Request.Specimen, anchor: PathRequestSpecimen}} |
| {{pagelink: LogicalModelsIndex, text: Report, anchor: PathLmReport}} | DiagnosticReport | {{pagelink: FHIRProfilesIndex, text: path-Report, anchor: PathReport}} |
| {{pagelink: LogicalModelsIndex, text: Report (ClinicalInformation), anchor: PathLmReport}} | Observation | {{pagelink: FHIRProfilesIndex, text: path-Report.ClinicalInformation, anchor: PathReportClinicalInformation}} |
| {{pagelink: LogicalModelsIndex, text: Report (Macroscopy), anchor: PathLmReport}} | Observation | {{pagelink: FHIRProfilesIndex, text: path-Report.Macroscopy, anchor: PathReportMacroscopy}} |
| {{pagelink: LogicalModelsIndex, text: Report (Microscopy), anchor: PathLmReport}} | Observation | {{pagelink: FHIRProfilesIndex, text: path-Report.Microscopy, anchor: PathReportMicroscopy}} |
| {{pagelink: LogicalModelsIndex, text: Report (ProtocolDataItem), anchor: PathLmReport}} | Observation | {{pagelink: FHIRProfilesIndex, text: path-Report.ProtocolDataItem, anchor: PathReportProtocolDataItem}} |

**Table 1: Relevant pathology-specific profiles**

Note the following:
- The [Nictiz Profiling Guidelines for FHIR R4](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_Profiling_Guidelines_R4) have been used as guidelines for creating the profiles.
- The (element) descriptions present in the profiles are taken from the respective Logical Model the mapped concept originates from.
- The ['open world' modeling](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_Profiling_Guidelines_R4#Open_vs._closed_world_modeling) approach is adopted as much as possible. Notable exceptions are cardinalities that have been restricted based on the functional dataset of the MedMij use case, such as several minimum cardinalities.
- Several pathology-specific profiles are based on equivalent nl-core profiles, namely {{pagelink: FHIRProfilesIndex, text: path-Patient, anchor: PathPatient}} on [nl-core-Patient](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4), and {{pagelink: FHIRProfilesIndex, text: path-Request.Requester, anchor: PathRequestRequester}} on [nl-core-HealthProfessional-PractitionerRole](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4). Resources that conform to these pathology-specific profiles SHALL have `.meta.profile` elements for the URLs of both the pathology-specific profile and the corresponding nl-core profile. This is in line with the [Nictiz FHIR IG R4](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_IG_R4#Profile_use_and_declaration).

In Figure 1, the profiles listed above are visualized, as well as the relations between them.

{{render: guides/medmij-r4-pathology-ig/images/Overview FHIR profiles.png}}

**Figure 1: Overview of FHIR profiles**
## Other profiles
FHIR R4 conformance resources developed by Nictiz (based on zib publication 2020) from the [nl-core 0.12.0-beta.4 package](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.4) are used and referenced where possible. In particular, the zibs and corresponding nl-core profiles collected in the table below are used.

| Zib | FHIR resource | FHIR profile |
| --- | --- | --- |
| [HealthProfessional](https://zibs.nl/wiki/HealthProfessional-v3.5(2020EN)) | PractitionerRole <br/> Practitioner | [nl-core-HealthProfessional-PractitionerRole](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) <br/> [nl-core-HealthProfessional-Practitioner](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) |
| [HealthcareProvider](https://zibs.nl/wiki/HealthcareProvider-v3.4(2020EN)) | Location <br/> Organization | [nl-core-HealthcareProvider](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) <br/> [nl-core-HealthcareProvider-Organization](https://simplifier.net/resolve?canonical=http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization&scope=nictiz.fhir.nl.r4.nl-core@0.12.0-beta.4) |

**Table 1: Relevant nl-core profiles**

Note the following:
- Each occurrence of the zib HealthProfessional is normally represented by two FHIR resources: a PractitionerRole resource (instance of nl-core-HealthProfessional-PractitionerRole) and a Practitioner resource (instance of nl-core-HealthProfessional-Practitioner). The Practitioner resource is referenced from the PractitionerRole instance. For this reason, sending systems should fill the reference to the PractitionerRole instance where relevant, and not the Practitioner resource. Receiving systems can then retrieve the reference to the Practitioner resource from that PractitionerRole instance.
In rare circumstances, there is only a Practitioner instance, in which case it is that instance which will be referenced instead. However, since this should be the exception, the nl-core-HealthProfessional-Practitioner profile is never explicitly mentioned as a target profile.
This is in line with the [Nictiz Profiling Guidelines for FHIR R4](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_Profiling_Guidelines_R4#Referencing_zib_HealthProfessional).