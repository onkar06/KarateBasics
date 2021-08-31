Feature: I'm learning Karate

  Scenario: Learning Karate
    * print 'I am learning Karate'


  Scenario: This scenario is for defining variables
    * def firstVariable = 12
    * def secondVariable = 'cakes'
    * print 'firstVariable -> ' + firstVariable, 'secondVariable -> ' + secondVariable


  Scenario: JSON object & print it
    Given def jsonObject =
    """
      [
        {
          "name": "Onkar",
          "id": 1
        },
        {
          "name": "Pade",
          "id": 2
        }
      ]
    """
#    * print jsonObject
    * print jsonObject[1].name, jsonObject[1].id
    
  Scenario: Testing API 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

  Scenario: Testing API 2
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

  Scenario: Testing API 3
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response