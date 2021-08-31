Feature: Using website jsonpathfinder to test API

  Background: 
    * url 'https://jsonpathfinder.com'
    * header accept = 'application/json'

  #Not working right now
  Scenario: Using jsonpathfinder
    Given url 'https://jsonpathfinder.com'
    When method GET
    Then status 200
    And match response.Indo-European.Indo-Iranian != null