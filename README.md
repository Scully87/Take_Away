Takeaway
==================

#### This is our Week 2 weekend [Makers Academy](https://www.makersacademy.com).

##### The main goals of Take Away:

- List of dishes with prices
- Placing the order by giving the list of dishes, their quantities and a number that should be the exact total.
- If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the
  order was placed successfully and that it will be delivered 1 hour from now, e.g. Thank you! Your order was placed
  and will be delivered before 18:52.
- The text sending functionality should be implemented using Twilio API.
  Use of twilio-ruby gem to access the API, use of a Gemfile to manage the gems

####To Do List
- [x] Create a Customer class
- [x] Create a Dish
- [x] Create a Line Item class
- [x] Create an Order Class
- [x] Create Send Sms Class
- [x] Use Twilio Api to send text message
- [x] Use Stubs to run test on the sending functionality

Technologies used:
- Ruby
- RSpec
- Twilio API

How to use
----------
Clone the repository:
```shell
$ git clone git@github.com:Scully87/Take_away.git
```

Change into the directory:
```shell
$ cd takeaway-challenge
```

Sign up for a free Twilio account

To run the tests:
```shell
$ rspec
```

To check out the code, open in IRB and require the files:
```shell
$ irb
  > require './runner'
```
