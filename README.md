# Sinatra Open Ended Project #2

## Question

We're going to build a simple link shortener, similar to [bitly][] and [tinycc][].

You'll have one model `Url`, which is a list of URLs that people have entered.

## General Guidelines

If you use the generated shortened URL, it should redirects us to the full (unshortened) URL.
If you've never used bitly, use it now to get a feel for how it works.

- The shortened URL should be at unique.

#### Hint: Read about Base58 - You should consider the valid Base58 character alphabets for more user friendly links.

The home page should at least:

- Have the ability for the anyone to create a new short URL

- Display the last 5 shortened URLs. On top of this, keep track of how many
times someone has visited the shortened URL and display it.

The user should be able to sign up and log in.

- If they do, the shortened URL will belong to the User.

- They should be able to regenerate the URL, or delete the URL.

- They should also be able to see a list of all the URLs they have generated, and the number of times the shortened links have been used.

You should also style your app: Use Bootstrap, CSS Grid or any other framework as you would prefer.

#### Hint 2: Learn about callbacks and use the `before_save` callback to generate the short URL.

After you are done with the above general guidelines, add validations to your URL so that only valid URLs get saved to the database. Read up on [ActiveRecord validations][]

A "valid URL" validation is never perfect. 

#### Hint 3: You can use the [Ruby URI module][URI module] to check if a URL is valid or not.

If the URL is not valid, use the [errors][] method to display a helpful error message, giving them the opportunity to correct their error.

### Challenge Mode:

Using Javascript, convert your form to an AJAX form that returns the shortened URL without needing to refresh the page.

### After you have completed your project, whether if you completed Challenge Mode or not, please convert your app to be using PostgreSQL. Please test and ensure that your app works after conversion. If you would like, you can start your project in PostgreSQL directly rather than SQLite. If you get the error ```ActiveRecord::NoDatabaseError: FATAL:  role "recode" does not exist``` then use the command ```sudo -u postgres createuser -s $(whoami);``` in terminal

To do this, you will likely need to switch gems (remove ```sqlite3``` and add ```pg```), and change database.yml to use the adapter ```postgresql```. You will also need to change the database name. Depending on your computer configuration, you might also need to add a username and password key-value to your database.yml.

### What comes after?

We will be using this project to learn about deployment to the web on Monday (15 July 2019). Please make sure this project is completed before class on Monday. If you do not have a working project, you will not be able to sucessfully complete this.

* [Bit.ly, a url shortening service][bitly]
* [ActiveRecord validations][]
* [URI module][]
* [ActiveRecord's errors object][errors]

[bitly]: http://bitly.com/
[tinycc]: http://tiny.cc/
[ActiveRecord validations]: http://guides.rubyonrails.org/active_record_validations.html.
[URI module]: http://www.ruby-doc.org/stdlib-2.6.3/libdoc/uri/rdoc/URI.html
[errors]: http://guides.rubyonrails.org/active_record_validations.html#validations-overview-errors
