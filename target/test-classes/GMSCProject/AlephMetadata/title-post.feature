Feature: Testing metadata from aleph
  Scenario Outline: test title metadata from aleph

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
    Given url getTitlesURL
    And path 'cltitle'
    And request bodyreq
    And params paramsTitle
    When method POST
    Then status 200
    * print response
    Examples:
      |titleId|
      |13483  |
      |2235799|
      | 21228 |
      | 40410 |
      |839    |
      |20680  |
      |26876  |
      |26873  |
      |26872  |
      |26664  |
      |26663  |
      |26662  |
      |26661  |
      |26660  |
      |26659  |
      |26585  |
      |26584  |
      |26553  |
      |26551  |
      |26550  |
      |26549  |
      |26548  |
      |26530  |
      |26519  |
      |26518  |
      |26517  |
      |26474  |
      |26475  |
      |26459  |
      |26458  |
      |26457  |
      |26414  |
      |26413  |
      |26412  |
      |26411  |
      |26410  |
      |26409  |
      |26408  |
      |26407  |
      |26406  |
      |26665  |
      |26415  |
      |26234  |
      |26231  |
      |26222  |
      |38858  |
      |35075  |
      |32581  |
      |28515  |
      |28052  |
      |28011  |
      |27980  |
      |27975  |
      |23137  |
      |20112  |
      |17630  |
      |15072  |
      |15051  |
      |14812  |
      |14295  |
      |14273  |
      |9617   |
      |119329 |
      |118114 |
      |45308  |
      |44827  |
      |42915  |
      |42489  |
      |42028  |
      |42027  |
      |42026  |
      |42025  |
      |41133  |
      |40129  |
      |39225  |
      |39222  |
      |39221  |
      |39220  |
      |39007  |
      |29661  |
      |28619  |
      |28037  |
      |27166  |
      |25337  |
      |24633  |
      |20726  |
      |20683  |
      |5359   |
      |4966   |
      |4965   |
      |4052   |
      |3891   |
      |3766   |
      |3183   |
      |3031   |
      |2009   |
