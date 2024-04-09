## Student information
**Name:** Jan Neal Isaac D. Villamin\
**Student Number:** 2022-02425\
**Section:** UV1L

## Application description
An online shopping application that lets you view products in the catalog, add and remove items from the cart, and checkout and pay for the items in the cart.

## Things I did in the code
I simply copied the code from the laboratory handout as the base code which includes the *main.dart*, *my_catalog.dart*, *my_cart.dart*, and *shopping_cart_provider.dart*.

Then, I added the *checkout.dart* file and wrote the Checkout widget similar to how the MyCart widget is implemented.

Then, I added the `/checkout` route in the *main.dart* and added an `ElevatedButton` in the *my_cart.dart* labeled "Checkout" to access the given route.

Then, I implemented the Checkout widget to display the items accessed via the `ShoppingCart` provider and implemented the `Pay Now` button to invoke the `removeAll()` method of the provider.

## Challenges when developing the application
The main challenge is conceptually understanding the provider in Flutter. It took my quite a while to understand it, but I mainly understood it by comparing to a similar concept - Redux - in web programming. I also had difficulty aligning the widgets to emulate how the exercise handout aligns the texts and such.
