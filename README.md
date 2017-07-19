# README

## Features Used

* Running on Ruby 2.4.0

* Using Rails scaffold feature to build database

* Use Devise gem to create user

* Use bcrypt gem to encrypt passwords

## About Project

* Museum website

* Admins can edit art, artists, and locations

* Users can buy tickets

* Browse the current artwork on display

rails g scaffold ticket date:datetime price:integer quantity:integer user:belongs_to
rails g scaffold artist fname:string lname:string birthdate:datetime deathdate:datetime bio:string user:belongs_to
rails g scaffold location wing:string storage:boolean
rails g scaffold art title:string description:text date:datetime type:string value:integer artist:belongs_to user:belongs_to location:belongs_to
rails g scaffold medium style:string

rails g migration ArtMedium
