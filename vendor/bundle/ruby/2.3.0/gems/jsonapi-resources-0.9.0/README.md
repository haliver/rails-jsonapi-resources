# JSONAPI::Resources [![Gem Version](https://badge.fury.io/rb/jsonapi-resources.svg)](https://badge.fury.io/rb/jsonapi-resources) [![Build Status](https://secure.travis-ci.org/cerebris/jsonapi-resources.svg?branch=beta)](http://travis-ci.org/cerebris/jsonapi-resources) [![Code Climate](https://codeclimate.com/github/cerebris/jsonapi-resources/badges/gpa.svg)](https://codeclimate.com/github/cerebris/jsonapi-resources)

[![Join the chat at https://gitter.im/cerebris/jsonapi-resources](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/cerebris/jsonapi-resources?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

`JSONAPI::Resources`, or "JR", provides a framework for developing an API server that complies with the
[JSON:API](http://jsonapi.org/) specification.

Like JSON:API itself, JR's design is focused on the resources served by an API. JR needs little more than a definition
of your resources, including their attributes and relationships, to make your server compliant with JSON API.

JR is designed to work with Rails 4.2+, and provides custom routes, controllers, and serializers. JR's resources may be
backed by ActiveRecord models or by custom objects.

## Documentation

Full documentation can be found at [http://jsonapi-resources.com](http://jsonapi-resources.com), including the [v0.9 beta Guide](http://jsonapi-resources.com/v0.9/guide/) specific to this version. 

## Demo App

We have a simple demo app, called [Peeps](https://github.com/cerebris/peeps), available to show how JR is used.

## Client Libraries

JSON:API maintains a (non-verified) listing of [client libraries](http://jsonapi.org/implementations/#client-libraries)
which *should* be compatible with JSON:API compliant server implementations such as JR.

## Installation

Add JR to your application's `Gemfile`:

    gem 'jsonapi-resources'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jsonapi-resources

**For further usage see the [v0.9 beta Guide](http://jsonapi-resources.com/v0.9/guide/)**

## Contributing

1. Fork it ( http://github.com/cerebris/jsonapi-resources/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright 2014-2016 Cerebris Corporation. MIT License (see LICENSE for details).
