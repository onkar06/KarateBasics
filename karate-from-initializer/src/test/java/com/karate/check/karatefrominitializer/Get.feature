Feature: I'm learning Karate
  Scenario: Testing API
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

  Scenario: Testing API
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response

  Scenario: Testing API
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    
  Scenario: Get particular data in a list
    Given url 'https://reqres.in/api/unknown'
    When method GET
    Then status 200
    And print response.data[1].year

  Scenario: Get particular data in a list not exist
    Given url 'https://reqres.in/'
    When method GET
    Then status 200
    And print 'Not exist'

  #Check year is not null
  Scenario: Get particular data in a list
    Given url 'https://reqres.in/api/unknown'
    When method GET
    Then status 200
    And match response.data[1].year == '#notnull'

  #Select parameter & check its value
  Scenario: Get particular data in a list
    Given url 'https://reqres.in/api/unknown'
    When method GET
    Then status 200
    And match response.data[1].name == 'fuchsia rose'