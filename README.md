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
