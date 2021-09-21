As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

    Objects | Messages
    User
    bike    | 
    docking_station | release_bike

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

    Objects | Messages
    User
    bike    | check_bike_working


Nouns: person, bike, docking station
Verbs: use (a bike), release (a bike), see, working.

Feature Test = Putting the diagram or model into code - and responding to the error messages to make it work step by step.

Stack trace = A list of the method calls that the application was in the middle of when an exception was thrown. (Basically an error message - readable to humans)

How to use stack trace to debug errors = Examine the error messages - and the line where the error occurred - to figure out how to proceed with the problem.


Error 1: NameError (uninitialized constant DockingStation)
File Path of Error: 4: from /Users/max/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
        3: from /Users/max/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
        2: from /Users/max/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'

Line number: 1
What error means: You'll see this error when the code refers to a class or module that it can't find, often because the code doesn't include require, which instructs the Ruby file to load the class. In this case, we haven't ininitalised that class or method yet.

Solve error? : Initialise the class


What is RSPec? : A testing framework for Ruby that allows us to create tests for our code.
