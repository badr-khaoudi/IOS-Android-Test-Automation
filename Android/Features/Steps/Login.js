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
  'app' : 'bs://f629ed5a47a6a640d321c26a539a326760f09371',

  // Specify device and os_version for testing
  'device' : 'Google Pixel 3',
  'os_version' : '9.0',

  // Set other BrowserStack capabilities
  'project' : 'First NodeJS project',
  'build' : 'Node Android',
  'name': 'first_test',
    browserName: '',
       
};

// Before function for driver initialization
Before( {timeout: 6000 * 10000}, async function () {
    console.log('Before: Connecting to Device.....');  
    driver = await new wd.Builder().usingServer("http://hub-cloud.browserstack.com/wd/hub").withCapabilities(desiredCaps).build();
    console.log('');  

    /*driver.wait(until.elementLocated(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.EditText")),1000);
    driver.findElement(By.xpath("//*[@text='Username']")).sendKeys("user2");*/
    
})

// Given Function of Cucumber , with Creds
Given(/^Input Credentials$/, {timeout: 6000 * 1000}, async () => {
    try {
        
        await driver.wait(until.elementLocated(By.xpath("//*[@text='Username']"), 1000));
        var Username = await driver.findElement(By.xpath("//*[@text='Username']"));
        await Username.sendKeys("user2");

        var Password = await driver.findElement(By.xpath("//*[@text='Password']"));
        await Password.sendKeys("4AX4hVH9bW4+");

        
     } catch (error) {    
    }  
});

Then(/^User logs in$/, {timeout: 6000 * 1000}, async () => {
    try {

        var Login = await driver.findElement(By.xpath("//*[@text='LOGIN']"));
        await Login.click();
        driver.sleep(5000);
        
     } catch (error) {    
    }  
});


// After function to release the Driver
After(async function() {
    
    console.log('Disconnecting.....');  
    console.log('');  
    await driver.quit();
  })

