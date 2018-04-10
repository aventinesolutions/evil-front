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

## Trouble Shooting

* ####Webpack Binary not found by Webpacker Gem

```shell
# as root
% yarn global add webpack
```

```shell
# in project as yourself
% bundle exec rails webpacker:binstubs
```

The binary stubs for `webpacker` and `webpacker-dev-server` can be
checked into the repository.

After that,  Webpack compilation should work

```shell
% rake --trace webpacker:compile
```

* ####Pre-commit Git Hook stops working

(maybe because of changing Node modules)

```shell
# clobber the Node Modules folder and reinstall
% rm -rfv node_modules
% rake --trace yarn:install
```

Then, remove the Git pre-commit hook:
```shell
% cd .git/hooks
% rm -fv pre-commit
```

* ####Post CSS Syntax and Formatting
The up-to-date JetBrains plugin for Post CSS must be installed.

