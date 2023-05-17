Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "Patient"
Description: "A patient resource for an HIV Patient"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
//* identifier ^slicing.order = false
* identifier contains
    NID 0..1 and
    MR 1..1
* identifier[NID].value 0..1 MS
* identifier[NID].system = "http://openhie.org/fhir/training-solution-1/identifier/nid" (exactly)
* identifier[MR].value 1..1
* identifier[MR].system = "http://openhie.org/fhir/training-solution-1/identifier/mr" (exactly)
* identifier[MR].type.coding.code = #MR
* identifier[MR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[MR].type.coding.display = "Medical record number"
* identifier[MR].type.text = "Patient folder number"
* name.given 1..*
* name.family 1..1
* telecom 0..*
* gender 1..1
* birthDate 1..1
* address 0..*
* address.city 1..1
* address.line 1..*
* address.district 1..1
* address.state 1..1
* address.country 1..1
* contact 0..*
* contact.name.given 1..*
* contact.name.family 1..1
* contact.telecom 0..*
* contact.relationship 1..1
* maritalStatus 1..1
//* managingOrganization 1..1
* extension contains KeyPopulationStatus named KPS 1..1

Extension: KeyPopulationStatus
Id: key-population-status
Title: "Key HIV Population"
Description: "Populations who are at higher risk for HIV."
* value[x] only CodeableConcept
* valueCodeableConcept from VSKeyPopulationSatus (required)
* valueCodeableConcept.text = "HIV key population"
* valueCodeableConcept.coding.display 1..1


