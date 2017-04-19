# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
    - User is presented with a list of cooking lessons to select from for details. And they can type "list" to see the list again or "exit" to exit the gem

- [x] Pull data from an external source 
    - The gem scrapes data with NokiGiri and Openuri from https://www.surlatable.com and a Lesson object is created based in scraped data.

- [X] Implement both list and detail views
    - A list of cooking lessons, ie Lesson object, stored in @@all, is displayed, and details are displayed according to user input.  
