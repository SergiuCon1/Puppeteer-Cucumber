const { Given, When, Then, BeforeAll, AfterAll } = require('@cucumber/cucumber');
const puppeteer = require('puppeteer');
const chai = require('chai');
const expect = chai.expect;
const { clickElement, clickSeveralElements} = require("/Users/sergi/JavaScript/Puppeteer2/lib/commands.js");

var browser;
var page;

BeforeAll(async function() {
    browser = await puppeteer.launch({ 
        headless: false, 
        slowMo: 100 
    });

    page = await browser.newPage();
});

AfterAll(async function() {
    page = await browser.close();
});

Given('user is on {string} page', async function(url) {
    await page.goto(url);
});

When('user clicks on the button {string}', {timeout: 2 * 5000}, async function(type) {
    switch(type) {
        case "dayOfWeek":
            const movieTimeButton = await page.$$("[class='page-nav__day-week']");
            await movieTimeButton[2].click();
            break;
        case "timeMovie":
            await clickElement(page, "[data-seance-id='129']");
            break;
        case "acceptButton":
            await clickElement(page, "[class='acceptin-button']");
            break;
        case "freeSlots":
            const freeSlots = await page.$$("[class='buying-scheme__chair buying-scheme__chair_standart']");
            await freeSlots[0].click();
            break;
        case "severalFreeSlots":
            await clickSeveralElements(page, "[class='buying-scheme__chair buying-scheme__chair_standart']");
            break;
    }
})

Then('user gets {string}', {timeout: 2 * 5000}, async function(type) {
    switch(type) {
        case "QA code":
            const expectedQRCode = await page.$eval("img", n => n.getAttribute("src"));
            expect(expectedQRCode).to.equal("i/QR_code.png");
            break;
        case "disabledButton":
            const expected = await page.$eval("button", n => n.getAttribute("disabled"));
            expect(expected).to.equal("true");
            break;
    }
    
})