# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
create app/models/articles.rb and put below code in it
class Article < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: { minimum: 6, maximum: 50 }
	validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end