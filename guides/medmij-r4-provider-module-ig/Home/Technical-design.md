---
topic: TO
---

# FHIR IG

## Introduction
This Technical Design (TD) describes the technical implementation of the ProviderModule (Aanbiedersmodule) based on the [Functional Design]() (FD). The TD is the technical counterpart of the FD and describes:
	•	the involved actors and systems;
	•	the FHIR profiles and resources to be used;
	•	the transactions (search/retrieve/publish) including example queries;
	•	the workflow relationships between definitions, orders/requests, and workflow items.

The FHIR version used for this IG is HL7 FHIR R4 (4.0.1). Infrastructure, security, authentication and authorization are governed by the MedMij framework and are not re-specified in this TD. (link naar changemanagement)

## Workflow model (FHIR Workflow)
ProviderModule follows the [FHIR workflow](https://hl7.org/fhir/R4/workflow.html) approach where resources are grouped into:
- Definitions: reusable definitions of activities (e.g., ActivityDefinition, Questionnaire)
- Requests: patient-specific “orders/requests” that something should be done (e.g., ServiceRequest, Task)
- Events: the execution/results (e.g., Observation, Procedure, QuestionnaireResponse). This is out of scope in this TD version

FHIR explicitly describes these categories (definitions/requests/events) and their relationships (e.g., requests referencing definitions, events referencing orders, parent-child relationships).

### Relationships in ProviderModule
- ActivityDefinition (Definition) describes the digital activity (launchable module, informational content) and contains generic, reusable information about the activity (what it is and how it should be used), including the technical launch information (Endpoint).
- ServiceRequest (Request) is the patient-specific clinical order to perform the activity, including scheduling (occurrence) and patient instructions (patientInstruction). It can also be used to provide patient-specific instructions that override or complement the generic guidance defined in the ActivityDefinition.
- Task (Request) is the actionable workflow item shown to and performed by the patient (status/owner/partOf/groupIdentifier).
- Event resources (out of scope): Observations/QuestionnaireResponse/etc. resulting from execution (currently out of scope; focus is on tasks/workflow as stated in the FD).

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

### Overview
The healthcare provider initiates a digital activity for the patient. The patient retrieves the task list in the PGO, starts (launches) the activity, performs it in an external application/module, and then sees task status updates in the PGO.

### Transactions
- PULL task list (PGO → source system): retrieve Task and/or ServiceRequest, including the links to the ActivityDefinition (instantiates), plus basedOn and any required context
- LAUNCH (PGO → module system): start external module via Endpoint (launch is partly outside core FHIR; Endpoint provides the launch address)
- UPDATE status (Module system → source system): update Task.status and possibly subtasks (progress/completion)

### Use case: Provider Module

### Dataset and conformance
The dataset is specified in the Logical Models:
- LogicalModel [Task]()
- LogicalModel [ActivityDefinition]()
- LogicalModel [ServiceRequest]()
- LogicalModel [Endpoint]()

Test material (fixtures) and example instances are published separately as test artifacts in the IG.


#### PHR: request message
The PHR system requests the task data using individual [search](https://hl7.org/fhir/R4/search.html) interactions. The task data exchange consists of multiple FHIR resources with certain constraints. The interactions are performed by an HTTP GET as shown: search interactions. The task data exchange consists of multiple FHIR resources with certain constraints. To obtain the patient's task data, the client can use multiple individual search operations based on specified search queries. The interactions are performed by an HTTP GET as shown:  

`GET [base]/[type]{?[parameters]}`

To update the status or other mutable elements of an existing Task (e.g., after launching or completing an activity), the Module system updates the Task resource on the source system using an HTTP PUT (or PATCH if supported by the server).

PUT [base]/Task/{id}

#### Retreive task list (PGO → Source System)
Goal: the patient retrieves the current tasks (and related orders/context).

Response:
- Bundle with Task(s) conforming to the ProviderModule-Task profile, including:
    - the referenced basedOn ServiceRequest (if present);
    - any subtasks linked via partOf (if present).

#### Update Task status (Module system → Source System)   
Goal: write back progress/completion.

#### Launch (PGO → module system)
The launch is based on information in ActivityDefinition and Endpoint resource (e.g., endpoint.address). In the ProviderModule context this is the step where the PGO starts an external module/application.

The launch is an interaction outside the core REST data exchange and is based on SMART App Launch. The specifications can be found in the ()

#### Workflow relationships and grouping

Link to Modules (ActivityDefinition):
- The Tasks (main task and subtasks) contain a link to ActivityDefinition that defines the launchable eHealth activity (what should be launched or performed).
- The ActivityDefinition references one or more Endpoint(s) that expose the activity and provide the technical access/launch details.

Main task and subtasks:
- If subtasks are used, there is always a main (parent) task representing the overall activity/module.
- Subtasks reference the main task via Task.partOf.
- Grouping of tasks within a single digital care module can be done using Task.groupIdentifier.

Link to order (ServiceRequest)
- A Task can reference the originating ServiceRequest via Task.basedOn.
- The ServiceRequest represents the clinical order for the digital activity and may include:
    - the patient-specific requested schedule (occurrence);
    - patient-specific instructions (patientInstruction).




#### Source system: Response message
The returned data to the PHR should conform to the profiles listed in the table below. The table below shows in the first four columns the provider module sections, the HCIMs that constitute those sections and the specific content of the provider module specific information. The last column shows the FHIR search queries to obtain the Provider Module information. These queries and expected responses are based on profiles listed in the {{pagelink:FO, text: functional design}}.  

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
            <td class="monospace">See Task and ServiceRequest</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Zorgaanbieder</td>
            <td>HealthcareProvider</td>
            <td><a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885775" target="_blank">nl-core-HealthcareProvider
            <a href="https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core/0.12.0-beta.1/files/2885776" target="_blank">nl-core-HealthcareProvider-Organization</a></td>
            <td class="monospace">See PractitionerRole</td>
        </tr>
         <tr>
            <td>4</td>
            <td>Task</td>
            <td>Task</td>
            <td><a href="https://simplifier.net/packages/medmij.fhir.nl.r4.dentalcare/1.0.0-beta.1/files/2955334" target="_blank">PM-Task</a></td>
            <td class="monospace">GET [base]/Task</td>
        </tr>
         <tr>
            <td>5</td>
            <td>ActivityDefinition</td>
            <td>ActivityDefinition</td>
            <td><a href="https://simplifier.net/packages/medmij.fhir.nl.r4.dentalcare/1.0.0-beta.1/files/2955334" target="_blank">PM-ActivityDefinition</a></td>
            <td class="monospace"> Include </td>
        </tr>
         <tr>
            <td>6</td>
            <td>Endpoint</td>
            <td>Endpoint</td>
            <td><a href="https://simplifier.net/packages/medmij.fhir.nl.r4.dentalcare/1.0.0-beta.1/files/2955334" target="_blank">PM-Endpoint</a></td>
            <td class="monospace"> Include </td>
        </tr>
         <tr>
            <td>7</td>
            <td>ServiceRequest</td>
            <td>ServiceRequest</td>
            <td><a href="https://simplifier.net/packages/medmij.fhir.nl.r4.dentalcare/1.0.0-beta.1/files/2955334" target="_blank">PM-ServiceRequest</a></td>
            <td class="monospace">See Task</td>
        </tr>
    </tbody>
</table>

</body>
</html>


#### Configuration search query Task
The PHR may use and the source system shall be capable of processing the minimal requirements outlined in the FHIR R4 IG [2.7.1.1 Search on date, number or quantity](https://informatiestandaarden.nictiz.nl/wiki/FHIR:V1.0_FHIR_IG_R4#Search_URLs_and_search_parameters). Example query: 

| Name | Type | Description | Example
|
| [date](https://www.hl7.org/fhir/R4/search.html#date)  | date | Encounter date/time based on **start** date/time | Retrieve appointments with a start date/time from 01-01-2015 onwards by `GET [base]/Encounter?date=gt2017-12-31`
