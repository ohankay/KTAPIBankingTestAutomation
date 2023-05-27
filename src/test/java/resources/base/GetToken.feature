#@parallel=false
Feature: GetToken

//
  Background:
    * url TokenUrl
    * header Content-Type = 'application/x-www-form-urlencoded'

    @GetToken
      Scenario: Base Get Token

        Given url TokenUrl
        And form field grant_type = 'client_credentials'
        And form field scope = 'public accounts transfers'
	    And form field client_id = '81a7613772634017ae36e211c6af52ca'
	    And form field client_secret = 'lRfRg9Ybrdcs6MIrCUdELRsyVJHVvXuxu9ZjJzspGFq/9h1FWxLiVA=='

        When method POST

        Then status 200
        Then print 'GetToken', response

        * def token = $.access_token
        Then print 'token degeri: ', token

