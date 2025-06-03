import { by, device, element, expect, waitFor } from 'detox';

describe('App Lifecycle & State Management', () => {
  beforeEach(async () => {
    await device.launchApp({ newInstance: true });
    // Add small delay to ensure app is fully loaded
    await new Promise(resolve => setTimeout(resolve, 2000));
  });

  afterEach(async () => {
    await device.terminateApp();
  });

  it('should maintain greeting state after app backgrounding', async () => {
    // Ensure welcome screen is loaded first
    await waitFor(element(by.id('welcome')))
      .toBeVisible()
      .withTimeout(2000);
    
    await waitFor(element(by.id('hello_button')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Tap Hello button
    await element(by.id('hello_button')).tap();
    
    // Wait for greeting to appear
    await waitFor(element(by.text('Hello!!!')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Background and foreground the app
    await device.sendToHome();
    await new Promise(resolve => setTimeout(resolve, 2000)); // Wait 2 seconds
    await device.launchApp();
    await new Promise(resolve => setTimeout(resolve, 1000)); // Wait for app to load
    
    // Verify greeting is still displayed
    await waitFor(element(by.text('Hello!!!')))
      .toBeVisible()
      .withTimeout(2000);
  });

  it('should test all buttons sequentially', async () => {
    // Test Hello button
    await waitFor(element(by.id('welcome')))
      .toBeVisible()
      .withTimeout(2000);
    
    await element(by.id('hello_button')).tap();
    await waitFor(element(by.text('Hello!!!')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Reset app and test World button
    await device.launchApp({ newInstance: true });
    await new Promise(resolve => setTimeout(resolve, 1000));
    
    await waitFor(element(by.id('welcome')))
      .toBeVisible()
      .withTimeout(2000);
    
    await element(by.id('world_button')).tap();
    await waitFor(element(by.text('World!!!')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Reset app and test Goodbye button
    await device.launchApp({ newInstance: true });
    await new Promise(resolve => setTimeout(resolve, 1000));
    
    await waitFor(element(by.id('welcome')))
      .toBeVisible()
      .withTimeout(2000);
    
    await element(by.id('goodbye_button')).tap();
    await waitFor(element(by.text('Goodbye, World!!!')))
      .toBeVisible()
      .withTimeout(2000);
  });

  it('should maintain World message state after backgrounding', async () => {
    // Ensure welcome screen is loaded first
    await waitFor(element(by.id('welcome')))
      .toBeVisible()
      .withTimeout(2000);
    
    await waitFor(element(by.id('world_button')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Tap World button
    await element(by.id('world_button')).tap();
    
    // Wait for greeting to appear
    await waitFor(element(by.text('World!!!')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Background and foreground the app
    await device.sendToHome();
    await new Promise(resolve => setTimeout(resolve, 2000)); // Wait 2 seconds
    await device.launchApp();
    await new Promise(resolve => setTimeout(resolve, 1000)); // Wait for app to load
    
    // Verify greeting is still displayed
    await waitFor(element(by.text('World!!!')))
      .toBeVisible()
      .withTimeout(2000);
  });

  it('should maintain Goodbye message state after backgrounding', async () => {
    // Ensure welcome screen is loaded first
    await waitFor(element(by.id('welcome')))
      .toBeVisible()
      .withTimeout(2000);
    
    await waitFor(element(by.id('goodbye_button')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Tap Goodbye button
    await element(by.id('goodbye_button')).tap();
    
    // Wait for greeting to appear
    await waitFor(element(by.text('Goodbye, World!!!')))
      .toBeVisible()
      .withTimeout(2000);
    
    // Background and foreground the app
    await device.sendToHome();
    await new Promise(resolve => setTimeout(resolve, 2000)); // Wait 2 seconds
    await device.launchApp();
    await new Promise(resolve => setTimeout(resolve, 1000)); // Wait for app to load
    
    // Verify greeting is still displayed
    await waitFor(element(by.text('Goodbye, World!!!')))
      .toBeVisible()
      .withTimeout(2000);
  });
});