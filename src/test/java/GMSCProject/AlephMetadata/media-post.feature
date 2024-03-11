Feature: Test metadata from Aleph

  Scenario Outline: Test media metadata from aleph
    * def bodyData =
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


    Given url getMediaPostURL
    And path 'clmedia'
    And request bodyData
    And param empCodigo = <eCodigo>
    And param sopCodigo = <sCodigo>
    And param troCodigo = <tCodigo>
    And param rolCodigo = <rCodigo>
    And param matCodigo = <mCodigo>
    And param mdeCodigo = <mdCodigo>
    When method POST
    Then status 200
    * print response



    Examples:
    |eCodigo|sCodigo|tCodigo|rCodigo|mCodigo|mdCodigo|
    |    1  | 'GMSH'| 'MAST'|1807312| 13483 |  1     |
    |    1  | 'GMSH'| 'MAST'|1807312| 13483 |  2     |
    |    1  |'GMSH' |'MAST' |1807309|2235799|  1     |
    |    1  |'FIBH' |'COPM' |1807310|2235799|  1     |
    |    1  |'GMSH' |'MAST' |1807304|2235799|  2     |
    |    1  |'FIBH' |'COPM' |1807273|2235799|  2     |
    |    1  |'GMSH' |'MAST' |1807295|2235799|  3     |
    |    1  |'GMSH' |'MAST' |1807277|2235799|  4     |
    |    1  |'FIBH' |'COPM' |1807279|2235799|  4     |
    |    1  |'FIBH' |'COPM' |1807278|2235799|  4     |
    |    1  |'FIBH' |'COPM' |1807255|2235799|  4     |
    |    1  |'GMSH' |'MAST' |1807293|2235799|  5     |
    |    1  |'GMSH' |'MAST' |1807294|2235799|  6     |
    |    1  |'GMSH' |'MAST' |1807305|2235799|  7     |
    |    1  |'GMSH' |'MAST' |1807302|2235799|  8     |
    |    1  |'FIB1' |'TX'   |1149705|20680  |  1     |
    |    1  |'FIB1' |'TX'   |1149705|20680  |  1     |
    |    1  |'FIB1' |'MAST' |1149475|20680  |  1     |
    |    1  |'FIB1' |'MAST' |1149453|20680  |  1     |
    |    1  |'FIB1' |'MAST' |1139334|20680  |  1     |
    |    1  |'BDIG' |'MAST' |1149453|20680  |  1     |
    |    1  |'BDIG' |'MAST' |1139334|20680  |  1     |
    |    1  |'FIB1' |'TX'   |1149747|20680  |  2     |
    |    1  |'FIB1' |'MAST' |1149476|20680  |  2     |
    |    1  |'BDIG' |'MAST' |1139335|20680  |  2     |
    |    1  |'BDIG' |'MAST' |1139336|20680  |  3     |
    |    1  |'BDIG' |'MAST' |1149454|20680  |  3     |
    |    1  |'FIB1' |'MAST' |1139336|20680  |  3     |
    |    1  |'FIB1' |'MAST' |1149454|20680  |  3     |
    |    1  |'FIB1' |'MAST' |1149477|20680  |  3     |
    |    1  |'FIB1' |'MAST' |1149850|20680  |  3     |
    |    1  |'BDIG' |'MAST' |1139337|20680  |  4     |
    |    1  |'BDIG' |'MAST' |1139337|20680  |  4     |
    |    1  |'FIB1' |'MAST' |113933|20680   |  4     |
    |    1  |'FIB1' |'MAST' |1150590|20680  |  4     |
    |    1  |'FIB1' |'TX' |1150968|20680    |  4     |
    |    1  |'FIB1' |'TX' |1150968|20680    |  4     |


    #sopCodigo: FIBH
  #troCodigo: COPM
  #rolCodigo: 1807310
  #empCodigo: 1 siempre
  # matCodigo: titleId
  # chapter n°
