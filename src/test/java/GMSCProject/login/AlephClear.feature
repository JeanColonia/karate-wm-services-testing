Feature: Testing devida project login with user credentials
  Scenario Outline: test user login

    * def bodyreq =
    """
        {
            "payload": {
                "clearUserId": clearUserId,
                "mamCredentials": {
                    "clientId": clientId,
                    "clientSecret":clientSecret,
                    "userId": userId,
                    "password":password,
                    "encrypted": encrypted
                }
            }
          }
    """
    * def paramsTitle = {titleId:<titleId>}
    Given url alephClear
    And path 'cltitle'
    And request bodyreq
    And params paramsTitle
    When method POST
    Then status 200
    * print response
Examples:
|titleId|
|13483  |