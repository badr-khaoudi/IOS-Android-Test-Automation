  
"use strict";

var wd = require("selenium-webdriver"),
    By = wd.By,
    until = wd.until;

const { Before, Given, When, Then , After } = require('cucumber')
var assert = require('assert');


let driver;


// Setting Desired Capabilities.
var desiredCaps = {
   // Set your BrowserStack access credentials
'browserstack.user' : 'inspherisbader1',
'browserstack.key' : '3ETKHsWSq5TEqdjX3KYQ',

  // Set URL of the application under test
'app' : 'bs://70cea196ffba7df46746cb6e6e688392a335feb8',

// Specify device and os_version for testing
'device' : 'iPhone XS',
'os_version' : '12',
"autoDismissAlerts":true,

// Set other BrowserStack capabilities
'project' : 'First NodeJS project',
'build' : 'Node iOS',
'name': 'first_test',
    browserName: ''
       
};
//"autoDismissAlerts", true

// Before function for driver initialization
Before( {timeout: 6000 * 10000}, async function () {
    console.log('Before: Connecting to Device.....');  
    driver = await new wd.Builder().usingServer("http://hub-cloud.browserstack.com/wd/hub").withCapabilities(desiredCaps).build();
    console.log('');  
    
})

// Given Function of Cucumber , with Creds
Given(/^Input Username$/, {timeout: 6000 * 1000}, async () => {
    try {
        var Username = await driver.findElement(By.xpath("//*[@name='input-username']"));
        await Username.sendKeys("user2");
        
        
     } catch (error) {    
    }  
});

When(/^Input Password$/, {timeout: 6000 * 1000}, async () => {
    try{

        var Eye= await driver.findElement(By.xpath("//*[@name='button-vision']"));
        await Eye.click();

        var Password = await driver.findElement(By.xpath("//*[@name='input-password']"));
        await Password.sendKeys("4AX4hVH9bW4+");

    }catch(error){

    }
})

Then(/^User logs in$/, {timeout: 6000 * 1000}, async () => {
    try {
        
      var Login = await driver.findElement(By.xpath("//*[@name='button-login']"));
        await Login.click();
        
     } catch (error) {    
    }  
});


// After function to release the Driver
After(async function() {
    console.log('Disconnecting.....');  
    console.log('');  
    await driver.quit();
  })