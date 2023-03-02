# Fresh Market

This is the backend of Phase 3 project for Flatiron.  This focuses on querying the database by the client side using Sinatra and ActiveRecord.

Here, there are a few endpoints that holds responsibility and some using ActiveRecord methods.

# Filter

This backend can query the database when the user selects a radio button using the splat params at the ProdsucesController file.  This dynamic endpoint allows any input in the path to communicate with the backend and return instances that meet the criteria.

# Search

This backend also feature search function from the frontend that will return produces that contain the input.  For example, if a user typed in 'apple' the backend will return 'apple' and 'pineapple.'

# Cart

Items that are selected in the cart holds foreign keys of a produce and order.  This allows the frontend to retrieve the data that matches the produce id while still obtaining attributes and properties of a cart (eg: quantity, total, etc.).

# Order

Instances of the order class contain information of the customer, such as name, phone number and credit card.