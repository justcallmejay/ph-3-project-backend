# Fresh Market

This is the backend of Phase 3 project for Flatiron.  This focuses on querying the database from the client side using Sinatra and ActiveRecord.

Here, there are a few endpoints that holds responsibility and some using ActiveRecord methods.

## Controller

# Filter

This backend can query the database when the user selects a radio button using the splat params at the ProdsucesController file.  This dynamic endpoint allows any input in the path to communicate with the backend and return instances that meet the criteria.

# Search

This backend also feature search function from the frontend that will return produces that contain the input.  For example, if a user typed in 'apple' the backend will return 'apple' and 'pineapple.'

## Model

Included are a few methods that showcase the interaction between files inside model folder and files inside controller folder.

## Class

# Cart

Items that are selected in Cart holds foreign keys of Produce and Order.  This allows the frontend to retrieve the data that matches the produce_id while still obtaining attributes and properties of Cart (eg: quantity, total, etc.).  When the client places an order, the app will add a value to order_id.

# Order

Instances of the Order class contain information of the customer: name, phone number, credit card, expiration date (month and year), and code.

# Seeds

The seeds file inside the db folder contain instances of 35 Produce instances, sample Orders holding attributes of sample customers that I assembled, and random orders in Cart.  First, type 'install bundle', then 'rake server' after installation is completed.