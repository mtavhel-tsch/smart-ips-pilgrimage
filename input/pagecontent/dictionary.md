Component 5 in the Digital Adaptation Kit (DAK): SMART GAuidelines for Immunizations 
(link forthcoming) outlines the minimum set of data corresponding to different 
points of the workflow within the identified business processes. This data set 
can be used on any softwaresystem and lists the data elements relevant for 
service delivery and executing decision-support logic, as well as for populating 
indicators and performance metrics. 

See Web Annex A of the DAK for the complete data dictionary in
spreadsheet form detailing the input options, validation checks and
concept dictionary codes.


### IPS.PILGRIMAGE.4.0 Break The Glass Clinical Encounter
The following table includes data elements for the registration workflow.

<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: right;">
        <th>Activity ID</th>
        <th>Data Element ID</th>
        <th>Data Element Label</th>
        <th>Description and Definition</th>
        <th>Multiple Choice Type (if applicable)</th>
        <th>Data Type</th>
        <th>Input Options</th>
        <th>Calculation</th>
        <th>Quantity Sub-Type</th>
        <th>Validation Condition</th>
        <th>Editable</th>
        <th>Required</th>
        <th>Skip Logic</th>
        <th>Linkages to Aggregate Indicators</th>
        <th>Notes</th>
        <th>ICD-11 Code</th>
        <th>ICD-11 URI</th>
        <th>ICD-11 Comments / Considerations</th>
        <th>ICD-11 Relationship</th>
        <th>ICD-10 Code</th>
        <th>ICD-10 Comments / Considerations</th>
        <th>ICD-10 Relationship</th>
        <th>ICD-9 Code</th>
        <th>ICD-9 Comments / Considerations</th>
        <th>ICD-9 Relationship</th>
        <th>LOINC version 2.68 Code</th>
        <th>LOINC version 2.68 Comments / Considerations</th>
        <th>LOINC version 2.68 Relationship</th>
        <th>ICHI (Beta 3) Code</th>
        <th>ICHI URI</th>
        <th>ICHI Comments / Considerations</th>
        <th>ICHI Relationship</th>
        <th>ICF Code</th>
        <th>ICF Comments / Considerations</th>
        <th>ICF Relationship</th>
        <th>SNOMED GPS Code</th>
        <th>SNOMED GPS Comments Considerations</th>
        <th>SNOMED GPS Relationship</th>
        <th>Snomed CT International Version Code</th>
        <th>Snomed CT International Version Comments / Considerations</th>
        <th>SNOMED CT Relationship</th>
        <th>HL7 FHIR R4 - Resource</th>
        <th>HL7 FHIR R4 - Values</th>
        <th>HL7 FHIR R4 Code</th>
        <th>HL7 FHIR R4 Relationship</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>IPS.PILGRIMAGE.4.0 Break the Glass Clinical Encounter </td>
        <td>IMMZ.C1.DE1</td>
        <td>Pilgrimage Registartion Number</td>
        <td>Unique identifier for the Pilgrim provided by the Host Country to the Pilgrim via the National Pilgrimage Authority</td>
        <td>N/A</td>
        <td>ID</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Minimum and maximum number of characters based on local policy</td>
        <td>No</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Identifier (property) (qualifier value)</td>
        <td>Equivalent</td>
        <td>Patient.identifier</td>
        <td></td>
        <td></td>
        <td>Equivalent</td>
      </tr>
   </tbody>
  </table>
 </div>
  
### Column definitions

The following table describes how to read the data dictionary, including keys and colour coding. For full notes, see the Web Annex of the DAK. 
  
<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: left;">
        <th>Data dictionary column</th>
        <th>Constrained input options (if relevant)</th>
        <th>Description of what to include for each unique data element</th>
      </tr>
    </thead>
    <tbody style="text-align: left; vertical-align: top">
      <tr>
        <td>Activity ID</td>
        <td></td>
        <td>Include the activity ID under which that data will first be collected. It is important that key data are collected only once. Even if that specific piece of data will be needed again in a later activity, it will be important to note when that data is actually first provided to the provider.</td>
      </tr>
      <tr>
        <td>Data Element Label</td>
        <td></td>
        <td>The label of the data element written in a way that end-users can easily understand – e.g. “education level”, “weight”, “height”, “reason(s) for coming into facility”, “which medication(s) is the client taking?” The data element label in this column is what will be used in the digital form: the digital register should not simply replace the paper registers, but it should also streamline processes and link duplicated data elements.</td>
      </tr>
      <tr>
        <td>Description and Definition</td>
        <td></td>
        <td>The description and definition of the data element, including any units that define the field (e.g. weight in kilograms [kg]). Provide a clear explanation of what this data field is requesting.</td>
      </tr>
      <tr>
        <td rowspan="4">Multiple Choice</td>
        <td></td>
        <td>If the data element is indicative of a multiple choice question (e.g. symptoms), then indicate the type of multiple choice question here. The types would be:</td>
      </tr>
      <tr>
        <td>Select one</td>
        <td>Select one – only one input can be chosen</td>
      </tr>
      <tr>
        <td>Select all that apply</td>
        <td>Select all that apply – more than one input option can be chosen</td>
      </tr>
      <tr>
        <td>Input Option</td>
        <td>Each individual answer option should be listed in the Input Options column and be classified with one of the data types listed below</td>
      </tr>
      <tr>
        <td rowspan="13">Data Type</td>
        <td></td>
        <td>The data types are as follows:</td>
      </tr>
      <tr>
        <td>Boolean</td>
        <td>Boolean (i.e. True/False, Yes/No)</td>
      </tr>
      <tr>
        <td>String</td>
        <td>String (i.e. a sequence of Unicode characters – e.g. name)</td>
      </tr>
      <tr>
        <td>Date</td>
        <td>Date (e.g. date of birth) – used for when only the date is recorded</td>
      </tr>
      <tr>
        <td>Time</td>
        <td>Time (e.g. time of delivery) – used for when only the time is recorded</td>
      </tr>
      <tr>
        <td>DateTime</td>
        <td>DateTime (e.g. appointment) – used for when you need to record the date and the time</td>
      </tr>
      <tr>
        <td>ID</td>
        <td>ID (e.g. unique identifier assigned to the client)</td>
      </tr>
      <tr>
        <td>Quantity</td>
        <td>Quantity – a number that is associated with a unit of measure outlined in the standard for Unified Code for Units of Measure (UCUM). Quantities include any number that is associated with a unit, such as “number of past pregnancies”, where “past pregnancies” is the unit of measure (1). <br>– If the data type is a “Quantity” there should be an associated sub-type listed in the “Quantity sub-type” column. </td>
      </tr>
      <tr>
        <td>Signature</td>
        <td>Signature (e.g. supervisor’s approval) – an electronic representation of a signature that is either cryptographic or a graphical image that represents a signature or a signature process</td>
      </tr>
      <tr>
        <td>Attachment</td>
        <td>Attachment (e.g. image) – additional data content defined in other formats</td>
      </tr>
      <tr>
        <td>Coding</td>
        <td>Coding (e.g. symptoms, reason for coming to the facility, danger signs) – multiple-choice data elements for which the input options are Codes.</td>
      </tr>
      <tr>
        <td>Codes</td>
        <td>Codes (e.g. pregnant, HIV positive, combined pill) – data elements that are input options to multiple-choice data elements, which are none of the above data types.</td>
      </tr>
      <tr>
        <td colspan="2">Although the list above should be sufficient to relay this information to a health informaticist or technology vendor, there are many more data codes that can be applied to achieve a more precise classification – for other possible data types, please refer to the HL7 FHIR guide on Data Types (2)</td>
      </tr>
      <tr>
        <td>Input Options</td>
        <td></td>
        <td>For multiple-choice fields only – for other fields, leave this column blank. Write the list of responses from which the health worker may select. Each of these options should be labelled with a Data Type as indicated above.</td>
      </tr>
      <tr>
        <td>Calculation</td>
        <td></td>
        <td>If a calculation is needed to define the data element, write the formula here. Leave this column blank if no calculation is needed. Write the formula using standard mathematical symbols and the Data Element Label included in the formula (e.g. for the body mass index calculation (BMI), “Weight/(Height^2)”).</td>
      </tr>
      <tr>
        <td rowspan="4">Quantity Sub-type</td>
        <td>N/A</td>
        <td>Quantity data types can include any number that is associated with a unit of measure. However, there are many sub-types of Quantity that should be listed here:</td>
      </tr>
      <tr>
        <td>Integer quantity</td>
        <td>Integer quantity – a whole number (e.g. number of past pregnancies, pulse, systolic blood pressure, diastolic blood pressure)</td>
      </tr>
      <tr>
        <td>Decimal quantity</td>
        <td>Decimal quantity – rational numbers that have a decimal representation (e.g. exact weight in kilograms, exact height in centimetres, location coordinates, percentages, temperature)</td>
      </tr>
      <tr>
        <td>Duration</td>
        <td>Duration – duration of time associated with time units (e.g. number of minutes, number of hours, number of days)</td>
      </tr>
      <tr>
        <td>Validation Condition</td>
        <td></td>
        <td>With digital systems, it is possible to incorporate “data entry validation” to ensure that the data entered into that field is accurate at the time of data entry. <br>For example, if a health worker accidentally enters the height of an individual as 1650 cm instead of 165 cm, the system should notify the health worker that an erroneous height has been entered. This feature will help increase the fidelity of data entry. <br>This should contain the range of acceptable responses, if validation is required (e.g. for a phone number, only 10 digits allowed; for a birthday, only past dates allowed). </td>
      </tr>
      <tr>
        <td>Editable</td>
        <td></td>
        <td>Indicate whether the end-user, or health worker, would be able to edit the field after it has been input to the system: “Yes” or “No”</td>
      </tr>
      <tr>
        <td rowspan="4">Required</td>
        <td></td>
        <td>Note whether or not this field is:</td>
      </tr>
      <tr>
        <td>R</td>
        <td>Required – R</td>
      </tr>
      <tr>
        <td>O</td>
        <td>Optional – O</td>
      </tr>
      <tr>
        <td>C</td>
        <td>Conditional on answers from other data fields – C</td>
      </tr>
      <tr>
        <td>Skip Logic</td>
        <td></td>
        <td>If the field is Conditional on answers from other data fields (C), denote what the skip logic is here. This is common for data elements that are a part of follow-up questions. For example, if the input of one data element field has a value lower than a certain threshold, then some data inputs can be skipped. Those input data elements will have skip logic that is defined by a preset threshold. Skip logic can also sometimes be referred to as “Relevance”, as the logic described in this field sometimes determines whether or not that specific data element is “relevant”.</td>
      </tr>
      <tr>
        <td>Linkages to aggregate indicators</td>
        <td></td>
        <td>List the indicators here, if applicable</td>
      </tr>
      <tr>
        <td>Notes</td>
        <td> This column should be used for any other notes, annotations or communication messages within the team</td>
        <td></td>
      </tr>
      <tr>
        <td>Mapping to code systems (standardized terminologies and classifications)</td>
        <td></td>
        <td>Depending on which systems the digital system is planned to interoperate with, other columns will need to be added to map to code systems for standardized terminologies/classifications used in the other systems (e.g. ICD-11, SNOMED, LOINC). One column should be used for each type of code system</td>
      </tr>
      <tr>
        <td>Mapping to code systems, Considerations/comments</td>
        <td></td>
        <td>This column should be used for any other notes, annotations related to the concept maps.</td>
      </tr>
      <tr>
        <td rowspan="6">Mapping to code systems, Relationship</td>
        <td></td>
        <td>For data elements that can be mapped, this column should be used to identify the relationship between the original intent of the data element (i.e. “source concept”) with the terminology mapping available in existing code systems (i.e. “target concept”) (3). The field should indicate:</td>
      </tr>
      <tr>
        <td>Related to</td>
        <td>The concepts are related to each other, but the exact relationship is not known.</td>
      </tr>
      <tr>
        <td>Equivalent</td>
        <td>The definitions of the concepts mean the same thing.</td>
      </tr>
      <tr>
        <td>Source is narrower than target</td>
        <td>The source concept is narrower in meaning than the target concept.</td>
      </tr>
      <tr>
        <td>Source is broader than target</td>
        <td>The source concept is broader in meaning than the target concept.</td>
      </tr>
      <tr>
        <td>Not related to</td>
        <td>This is an explicit assertion that the target concept is not related to the source concept.</td>
      </tr>
    </tbody>
  </table>
</div>
