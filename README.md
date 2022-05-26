# Setup Steps

- `rails new .`
- Edit `Gemfile` to include `sorbet-runtime`, `sorbet`, and `tapioca`
- `bundle exec tapioca init`
- `bin/tapioca require`
- `bin/tapioca gems`
- `bin/tapioca dsl`
- `rails generate model Session token:string`
- `rails db:migrate`
- `bin/tapioca dsl`
- Edit `app/models/session.rb`
- Edit `app/controllers/application_controller.rb`
- Create `app/controllers/sessions_controller.rb`
- Create `app/controllers/welcome_controller.rb`
- Edit `config/routes.rb`
- Create `app/views/sessions/new.html.erb`
- Create `app/views/welcome/index.html.erb`
- Add `activeadmin` to Gemfile
- `rails generate activeadmin:install --skip-users`
- `rails db:migrate`
- `bin/tapioca require`
- `bin/tapioca gem`
- `bin/tapioca dsl`

# Reproducing the Problem

- `rails s`
- Navigate to localhost:3000
- Log in
- Note the session class's object_id
- Navigate to `/admin`
- `$ touch app/models/session.rb` to trigger Rails to reload constants
- Reload `/admin` to see the class mismatch error
- Navigate back to the root URL to see that the object_id has changed and the
  error does not exist outside of ActiveAdmin
