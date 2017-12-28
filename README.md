# rails-jsonapi-resources

[![Build Status](https://travis-ci.org/haliver/rails-jsonapi-resources.svg?branch=master)](https://travis-ci.org/haliver/rails-jsonapi-resources)

### Environment
* Ruby 2.3.1
* Ruby on Rails 5.1.1
* use `jsonapi-resources`

### Installation

```
git clone git@github.com:haliver/rails-jsonapi-resources.git
```

### How to use?

* First of all we will make a data.

```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

* As usual `rails s`

### Response to result

* e.g. `curl -i -H "Accept: application/vnd.api+json" http://localhost:3000/users/1`

```
{
  "data": {
    "id": "1",
    "type": "users",
    "links": {
      "self": "http://localhost:3000/users/1"
    },
    "attributes": {
      "name": "name0"
    },
    "relationships": {
      "reviews": {
        "links": {
          "self": "http://localhost:3000/users/1/relationships/reviews",
          "related": "http://localhost:3000/users/1/reviews"
        }
      }
    }
  }
}
```

* e.g. `curl -i -H "Accept: application/vnd.api+json" http://localhost:3000/reviews/1`

```
{
  "data": {
    "id": "1",
    "type": "reviews",
    "links": {
      "self": "http://localhost:3000/reviews/1"
    },
    "attributes": {
      "comment": "name0は、0語りき"
    }
  }
}
```
