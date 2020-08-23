Feature: webservice api call

  Scenario Outline: sending post request
    Given User wants to make webservice "<apiName>" "<endpoint>" request
     When User sets Header parameters
      | x-rapidapi-host                 | x-rapidapi-key                                     |
      | restcountries-v1.p.rapidapi.com | b42bf2a0f0msh9f2ced883e4e79ep1c821bjsn899a3c43ec0c |
      And User sets Query parameters
      | dep |
      | qa  |
      And User sends POST request "<requestBody>"
     Then User recieves status code "<statusCode>"
      And User validates response body

    Examples: 
      | apiName  | endpoint                    | statusCode | requestBody                           |
      | userList | https://reqres.in/api/users |        201 | '{ "name": "Dorina", "job": "SDET" }' |
