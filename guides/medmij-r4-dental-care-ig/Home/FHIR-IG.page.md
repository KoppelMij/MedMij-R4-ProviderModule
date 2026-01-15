---
topic: TO
---

# FHIR IG

## Introduction
This Implementation Guide (IG) details the HL7 FHIR requirements for exchanging task data, basedon the "provider module" use case. 

This IG is a technical counterpart of the {{pagelink:FO, text: functional design}}. The FHIR version used for this IG is HL7 FHIR R4 (4.0.1).

## Actors involved

| Actor | | System | | FHIR CapabilityStatement |
|| --- | --- | --- | --- | --- | --- |
| **Name** | **Description** | **Name** | **Description** | **Name** | **Description** |
| Patient | The user of a personal healthcare environment | PHR | Personal health record | [TO DO] | FHIR client requirements |
| Healthcare provider | The user of a sourcesystem | sourcesystem | Healthcare information system | [TO DO] | FHIR server requirements |

## Boundaries and relationships
This FHIR IG includes use cases for the exchange of task data between health care providers and patients (e.g. in a PHR setting).

This IG guide assumes that a PHR is able to connect with a source system. It does not provide information on finding the right source system nor does it provide information about security. These infrastructure and interface specifications are described in the [MedMij Afsprakenstelsel](https://afsprakenstelsel.medmij.nl/).

(toelichting FHIR-profielen))

## Use cases


### Use case: Retrieve tasks


#### PHR: request message
The PHR system requests the task data using individual [search](https://hl7.org/fhir/R4/search.html) interactions. The task data exchange consists of multiple FHIR resources with certain constraints. To obtain the patient's dental care data, the client can use multiple individual search operations based on specified search queries. The interactions are performed by an HTTP GET as shown: search interactions. The task data exchange consists of multiple FHIR resources with certain constraints. To obtain the patient's task data, the client can use multiple individual search operations based on specified search queries. The interactions are performed by an HTTP GET as shown:  

`GET [base]/[type]{?[parameters]}`

The table below shows in the first four columns the provider module sections, the HCIMs that constitute those sections and the specific content of the provider module specific information. The last column shows the FHIR search queries to obtain the task information. These queries and expected responses are based on profiles listed in the {{pagelink:FO, text: functional design}}.

#### TIS: Response message
The returned data to the PHR should conform to the profiles listed in the table below.   

<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nette Tabel</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        .monospace {
            font-family: monospace;
            font-size: 12px;
        }
    </style>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Section</th>
            <th>CIM NL</th>
            <th>HCIM EN</th>
            <th>FHIR Profile </th>
            <th>Search URL</th>
        </tr>
    </thead>
    <tbody>
               <tr>
            <td>1</td>
            <td>Patiënt</td>
            <td>Patient</td>
              <td><a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885819" target="_blank">nl-core-Patient</a></td>
            <td class="monospace">GET [base]/Patient</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Zorgverlener</td>
            <td>HealthProfessional</td>
            <td><a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885777" target="_blank">nl-core-HealthProfessional-Practitioner 
             <a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885778" target="_blank">nl-core-HealthProfessional-PractitionerRole</a></td>
            <td class="monospace">See Observation Dental Fitness</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Zorgaanbieder</td>
            <td>HealthcareProvider</td>
            <td><a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885775" target="_blank">nl-core-HealthcareProvider
            <a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885776" target="_blank">nl-core-HealthcareProvider-Organization</a></td>
            <td class="monospace">See Observation Dental Fitness</td>
        </tr>
         <tr>
            <td>4</td>
            <td>DentalFitness</td>
            <td>DentalFitness</td>
            <td><a href="https://simplifier.net/packages/medmij.fhir.nl.r4.dentalcare/1.0.0-beta.1/files/2955334" target="_blank">mz-DentalFitness</a></td>
            <td class="monospace">GET [base]/Observation?code=http://snomed.info/sct|440271000146100&_include=Observation:performer</td>
        </tr>
    </tbody>
</table>

</body>
</html>


#### Configuration search query Encounter
The PHR may use and the source system shall be capable of processing the minimal requirements outlined in the FHIR R4 IG [2.7.1.1 Search on date, number or quantity](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_IG_R4#Search_URLs_and_search_parameters). Example query: 

| Name | Type | Description | Example
|
| [date](https://www.hl7.org/fhir/R4/search.html#date)  | date | Encounter date/time based on **start** date/time | Retrieve appointments with a start date/time from 01-01-2015 onwards by `GET [base]/Encounter?date=gt2017-12-31`
