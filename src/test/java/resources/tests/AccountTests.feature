#@parallel=false
Feature: AccountTests

  //
  Background:
    * call read('classpath:resources/base/GetToken.feature@GetToken')
    * url APIUrl
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+token

  @AccountList
  Scenario:  Account List

    Given url APIUrl
    And path 'v3/accounts'
    When method GET
    Then print 'Account List Response: ', response
    Then status 200

  @AccountTransactionList
  Scenario:  Account Transaction List

    Given url APIUrl
    And path 'v3/accounts/5/transactions'
    When method GET
    Then print 'Account Transaction List Response: ', response
    Then status 200


