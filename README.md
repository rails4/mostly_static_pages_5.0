# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Mostly Static Pages

```sh
rails new mostly_static_pages
cd mostly_static_pages
git init
# update README.md
git add .
git commit -m "initial commit"
```

```sh
create  app/controllers/static_pages_controller.rb
 route  get 'static_pages/help'
 route  get 'static_pages/home'
invoke  erb
create    app/views/static_pages
create    app/views/static_pages/home.html.erb
create    app/views/static_pages/help.html.erb
invoke  test_unit
create    test/controllers/static_pages_controller_test.rb
```

_config/routes.rb_
```ruby
Rails.application.routes.draw do
  get 'home', to: 'static_pages#home'
  get 'help', to: 'static_pages#help'
  root 'static_pages#home'
end
```

## Getting started with testing – MiniTest

```ruby

```
