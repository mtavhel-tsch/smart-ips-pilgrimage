---
---
{% assign igId = site.data.fhir.igId %}
{% assign resourceKey = "ImplementationGuide/" | append: igId %}
{% assign resource = site.data.resources[resourceKey] %}
{% assign source = resource.source %}

Testing of this specification is done by running the test cases defined in [Test Cases](test-cases.html).
These test cases are expressed 
* in Gherkin language or a dialect like Karate with a FHIR DSL
* using TestScripts


The test data is available in 3 ways:
1. As FHIR resources in this ImplementationGuide - these are used in the test cases
2. With test data definitions (templates or input for data generation tooling) - will be used in the data generation tooling 
3. From a pool of test data available from a package 


See [Test Data](test-data.html).


The testing artifacts in this implementation guide are not intended to be used to determine formal conformance, nor are they intended to be authoritative or comprehensive.



### Testing platforms


There is a quick setup of a working server, for testing the specification in a known configuration.  

#### Prerequisites
* [Docker](https://www.docker.com) installed locally

#### Instructions
1. Git clone or download the <a href="https://github.com/medigree/ips-sandbox/archive/refs/heads/main.zip" >sandbox</a>  to a local folder   
3. From that same folder, run `docker-compose up -d`  
4. Navigate to <a href="http://localhost:8080">http://localhost:8080</a>

