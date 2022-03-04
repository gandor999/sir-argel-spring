Feature: sample karate test script

Background:

    * url 'http://localhost:8080/api/v1/user'

    * def user =
        """
        {
            "name": "Michael Jordan"
        }
        """

Scenario: Create user

    Given path ''
    And request user
    When method post
    Then assert responseStatus == 200 || responseStatus == 201
    And match response.name == user.name
    And match response == '#object'
    And match response == { id: '#uuid', name: '#string' }

    * def name = response.name
    * print "Created person's name is:", name


    
