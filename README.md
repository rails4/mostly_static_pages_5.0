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
rails generate controller StaticPages home help
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

```sh
rails routes
Prefix Verb URI Pattern     Controller#Action
  home GET  /home(.:format) static_pages#home
  help GET  /help(.:format) static_pages#help
  root GET  /               static_pages#home
```

_test/controllers/static_pages_controller_test.rb_
```ruby
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_url
    assert_response :success
  end

  test 'should get help' do
    get help_url
    assert_response :success
  end

  test 'should get root page' do
    get root_url
    assert_response :success
  end
end
```

```sh
rails test
```

## Getting started with testing – RSpec

```sh
rm -rf test
```

_Gemfile_
```ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara'
end
```

```sh
rails g rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb
rails generate controller StaticPages home help
        invoke  rspec
        create    spec/controllers/static_pages_controller_spec.rb
        create    spec/views/static_pages
        create    spec/views/static_pages/home.html.erb_spec.rb
        create    spec/views/static_pages/help.html.erb_spec.rb
        invoke  helper
rm -rf spec/helpers/
```

Clean up _routes.rb_.

```sh
spec/
└── views
    └── static_pages
        ├── help.html.erb_spec.rb
        └── home.html.erb_spec.rb
```

Takie same poprawki w _help.html.erb_.
```ruby
RSpec.describe "static_pages/home.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"
end
```

```sh
spec/
├── controllers
│   └── static_pages_controller_spec.rb
```

```ruby
RSpec.describe StaticPagesController, type: :controller do
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end
end
```

```sh
rspec -fd
```
