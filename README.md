# Real-time Inventory Tracking System

This project is a real-time inventory tracking system for a warehouse. The system demonstrates the use of Turbo Streams, Stimulus, and ActionCable for real-time updates, allowing multiple users to view and update inventory levels simultaneously.

## Objective

Create a real-time inventory tracking system for a warehouse using Rails 7. This system should demonstrate the use of Turbo Streams, Stimulus, and ActionCable for real-time updates.

## Background

In modern supply chain management, real-time inventory tracking is crucial for efficient warehouse operations. This project aims to create a web-based system that allows multiple users to view and update inventory levels simultaneously, with changes reflected in real-time across all connected clients.

## Requirements

1. Set up a new Rails 7 project with Turbo and Stimulus.
2. Create an InventoryItem model with the following attributes:
   - name (string)
   - quantity (integer)
   - location (string)
3. Implement a dashboard where users can view all inventory items.
4. Allow users to update the quantity of inventory items.
5. Use Turbo Streams to update the inventory in real-time for all connected users.
6. Implement a Stimulus controller to handle quantity updates and form resets.
7. Use ActionCable to broadcast inventory changes to all connected clients.

## Getting Started

These instructions will help you set up and run the project on your local machine for development and testing purposes.

### Prerequisites

Ensure you have the following installed:

- [Ruby](https://www.ruby-lang.org/en/) (version 3.0.0 or later)
- [Rails](https://rubyonrails.org/) (version 7.0.0 or later)
- [Node.js](https://nodejs.org/) and [Yarn](https://yarnpkg.com/)


# Installation

**Clone the repository:**

   ```sh
   git clone https://github.com/shareenasheik/inventory_tracking_app
   cd inventory_tracking_app

   rvm gemset create inventory
   rvm gemset use inventory
   bundle install

   rails db:migrate
   rails db:seed

   rails server
   ```
# Open your browser and navigate to the following URL (Inventory Items Dashboard):

http://localhost:3000

# Access the following link to update the quantity of inventory items.

http://localhost:3000/inventory_items/update_quantity

On the update page, there are two fields: a "Select Inventory Item" dropdown containing the list of inventory items and a "Quantity" field. When an item is selected, the quantity of that item is fetched using Stimulus and appended to the Quantity field to avoid conflicts with updates from other users.


# How I implemented the real-time features

1. Turbo Streams is used to enable real-time updates in the UI without page reloads.
2. Stimulus is used to manage frontend interactions and form submissions.
3. ActionCable is used to broadcast inventory changes to all connected clients, ensuring that updates are propagated in real-time.


# Decision I made while implementing this Project:

1. I haven't created a separate DashboardController to show the dashboard. While I agree that a separate controller is generally better for a dashboard, I have currently used InventoryController#index for the dashboard page.

2. Since clients and users are different end-users, I have separated the Quantity update page from the Dashboard.

3. Due to time constraints, I haven't focused on test cases.