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
