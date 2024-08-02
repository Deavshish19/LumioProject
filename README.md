# LumioProject

Welcome to the LumioProject, a Salesforce Developer Technical Interview Project designed to assess your Salesforce development skills, focusing on Apex coding and Lightning Web Components (LWC).

## Project Overview

This project involves the following tasks:

1. **Apex Trigger: Order Quantity Update**
   - **Objective:** Create an Apex Trigger on the Order object to update the total quantity of products ordered whenever a new Order Product is added.
   - **Requirements:**
     - The trigger should fire after an Order Product (OrderItem) is inserted.
     - Calculate the total quantity of all products associated with the Order.
     - Update a custom field on the Order object (`Total_Quantity__c`).

2. **Apex Class: Inventory Management**
   - **Objective:** Develop an Apex Class to manage inventory levels for products.
   - **Requirements:**
     - Implement methods to reduce inventory when an Order is placed and replenish inventory when an Order is canceled.
     - Implement unit tests to cover the functionality.

3. **Custom Page in Lightning Web Component (LWC): Order Summary**
   - **Objective:** Build a Lightning Web Component to display a summary of an Order, including its products and total quantity.
   - **Requirements:**
     - Fetch Order data and related Order Products.
     - Display Order details (Order Number, Customer Name, Total Quantity).
     - Provide a simple UI with a table format.

4. **Manufacturing Cloud Integration: Production Capacity Check**
   - **Objective:** Integrate with Manufacturing Cloud to check production capacity before an Order is confirmed.
   - **Requirements:**
     - Create an Apex method to query production capacity.
     - Ensure the Order quantity does not exceed the available production capacity.
     - Display an appropriate message if capacity is exceeded.

## Getting Started

### Prerequisites

- Salesforce Developer Edition account

### Development Environment

- Use Salesforce Developer Console or Visual Studio Code with the Salesforce Extension Pack for development.
- Follow best practices for code development and documentation.


## How to Set Up and Test the Project

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Deavshish19/LumioProject.git

### Deploy to Salesforce:

Deploy the Apex Trigger, Apex Class, and LWC to your Salesforce Developer Edition account.

### Test the Functionality:

Add an Order Product and verify the Apex Trigger updates the total quantity.
Place and cancel orders to test inventory management.
View the Order Summary LWC to check the Order details.
Confirm the integration with Manufacturing Cloud by checking production capacity before order confirmation.   
