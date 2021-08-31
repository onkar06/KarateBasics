Feature: I'm learning Karate
  Background:
    * url 'https://reqres.in/api'
    * header accept = 'application/json'

  Scenario: Testing API
    Given path '/users/2'
    When method GET
    Then status 200

  Scenario: Testing API
    Given path '/users/2'
    When method GET
    Then status 200
    And print response

  Scenario: Testing API
    Given path '/users/2'
    When method GET
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders