# yet another example test rails5 + react + graphql

For updating my rails templates.

created with

    rails new rails_react_graphql_template_example --skip-spring --skip-turbolinks --skip-bundle --webpack=react

update Gemfile

- uncomment bcrypt, redis
- add react-rails, graphql, devise, pundit, pry-byebug, pry-nav, pry-rails, factory-bot-rails, faker

whoops, problems:

```
Ignoring bcrypt-3.1.12 because its extensions are not built. Try: gem pristine bcrypt --version 3.1.12
Ignoring bindex-0.5.0 because its extensions are not built. Try: gem pristine bindex --version 0.5.0
Ignoring byebug-10.0.2 because its extensions are not built. Try: gem pristine byebug --version 10.0.2
Ignoring ffi-1.9.25 because its extensions are not built. Try: gem pristine ffi --version 1.9.25
Ignoring nio4r-2.3.1 because its extensions are not built. Try: gem pristine nio4r --version 2.3.1
Ignoring nokogiri-1.8.4 because its extensions are not built. Try: gem pristine nokogiri --version 1.8.4
Ignoring puma-3.12.0 because its extensions are not built. Try: gem pristine puma --version 3.12.0
Ignoring sqlite3-1.3.13 because its extensions are not built. Try: gem pristine sqlite3 --version 1.3.13
Ignoring websocket-driver-0.7.0 because its extensions are not built. Try: gem pristine websocket-driver --version 0.7.0
```

to fix, maybe?

    gem install bundler
    gem install rails
    gem install rake
    gem install bcrypt
    gem install bindex byebug ffi puma sqlite

Maybe because I upgraded to ruby 2.5.1 ?

    gem install sqlite3

- uncomment bootsnap (?!?)

install graphql

    bin/rails g graphql:install
    bundle install

install devise

    bin/rails g devise:install

- Update `config/environments/development.rb` default url options.
- update `application.html.erb`
- create a static route and link to `root` route

        bin/rails g controller static index

```
RAILS_ENV=development environment is not defined in config/webpacker.yml, falling back to production environment
                   Prefix Verb URI Pattern                                                                              Controller#Action
             static_index GET  /static/index(.:format)                                                                  static#index
           graphiql_rails      /graphiql                                                                                GraphiQL::Rails::Engine {:graphql_path=>"/graphql"}
                  graphql POST /graphql(.:format)                                                                       graphql#execute
                     root GET  /                                                                                        static#index
       rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
     rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Routes for GraphiQL::Rails::Engine:
       GET  /           graphiql/rails/editors#show
```

Create User model for devise

    bin/rails g devise User
    bin/rails db:migrate


Install pundit, default policy

    bin/rails g pundit:install

Install webpacker and react-rails

    bin/rails webpacker:install
    yarn upgrade
    bin/rails webpacker:install:react
    bin/rails g react:install
