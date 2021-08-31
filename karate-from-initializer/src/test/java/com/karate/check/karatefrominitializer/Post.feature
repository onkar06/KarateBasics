Feature: Study POST request in Karate

  Background:
    * url 'https://jsonpathfinder.com'
    * header accept = 'application/json'

  Scenario: Basic post request
    Given url 'https://reqres.in/api/users'
    And request {"name": "Rob", "job": "Analyst"}
    When method POST
    Then status 201
    And print response

  #Name is stores as Rob and then we have changed job
  #If data is not present, testcase will fail(Ex: name: Rob1 & job: Developer)
  Scenario: Basic put request
    Given url 'https://reqres.in/api/users'
    And request {"name": "Rob", "job": "Analyst1"}
    When method PUT
    Then status 200
    And print response

  Scenario: Basic put request with condition
    Given url 'https://reqres.in/api/users'
    And request {"name": "Rob1", "job": "Analyst1"}
    When method POST
    Then status 201
    #Sequence for match response is not required.
    And match response == {"name": "Rob1", "job": "Analyst1", "createdAt": "#ignore", "id": "#string"}
    And print response