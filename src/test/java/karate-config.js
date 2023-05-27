function fn() {
var env = karate.env; // get system property 'karate.env'
 karate.log('karate.env system property was:', env);
if (!env) {
  env = 'Test';
 }


var config = {


    APIUrl : 'https://apitest.kuveytturk.com.tr/internalapiprep',
    TokenUrl: 'https://idprep.kuveytturk.com.tr/api/connect/token'

  }

 if (env == 'Test') {


config.APIUrl='https://apitest.kuveytturk.com.tr/internalapitest';
config.TokenUrl='https://idprep.kuveytturk.com.tr/api/connect/token'
//    // customize
//    // e.g. config.foo = 'bar';
//  } else if (env == 'e2e') {
//    // customize
 }

  return config;
}