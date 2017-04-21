== README

This is a quick-and-dirty Rails app built to demonstrate how some of the same Ruby programming techniques we've learned would be used in a Rails web application.

Most of this app was built automatically using a tool called Rails Scaffolding, which gives you the basics for an object in your system: it creates the database table, Rails Model (e.g., my_model.rb), and the various HTML pages you'd want for listing, adding, editing and removing instances of this object from your database. This is very helpful - this (admittedly very basic) application was built in about 30 minutes... it took longer to remember the proper CSS for a navbar than it did to get Student objects in and out of the database!

A proper course on Rails will go into much more detail than we can here. This is just meant to give you a taste of the power of the Rails framework and to demonstrate how the very same Ruby coding techniques you're learning in class can be applied to a modern web application.

=== In-class demo of Rails Scaffolds

In class, it may be helpful to demonstrate how these "scaffold" pages were generated. We can use the `Homework` class for this:

```
$ rails generate scaffold homework name points_possible:integer
$ rake db:migrate
```


