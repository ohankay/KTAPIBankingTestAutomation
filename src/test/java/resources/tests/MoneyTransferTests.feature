#@parallel=false
Feature: MoneyTransferTests

  //
  Background:
    * call read('classpath:resources/base/GetToken.feature@GetToken')
    * url APIUrl
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+token

  @InterBankMoneyTransfer
  Scenario:  Inter Bank Money Transfer

    Given url APIUrl
    And path 'v1/moneytransfer/interbankmoneytransfer'
    And def InterBankMoneyTransferRequest = read('classpath:templates/InterBankMoneyTransferRequest.json')
    And request InterBankMoneyTransferRequest
    When method POST
    Then def InterBankMoneyTransferResponse = response
    Then print 'Inter BankMoney Transfer Response: ', InterBankMoneyTransferResponse
    Then status 200
    And match InterBankMoneyTransferResponse.success == true
