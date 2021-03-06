# metaweblog - Ruby client for metaWeblog API

[![Gem Version](https://badge.fury.io/rb/metaweblog.svg)](https://badge.fury.io/rb/metaweblog)
[![Build Status](https://travis-ci.org/satoryu/metaweblog.svg?branch=master)](https://travis-ci.org/satoryu/metaweblog)
[![Coverage Status](https://coveralls.io/repos/github/satoryu/metaweblog/badge.svg?branch=measure_code_coverage)](https://coveralls.io/github/satoryu/metaweblog?branch=measure_code_coverage)

This gem makes it easier for you to talk with your blog apps via metaWeblog API.

## Installation

Add this line to your Gemfile:

    gem 'metaweblog'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metaweblog

## Usage

### Setup a client

```ruby
  client = MetaWeblog::Client.new('http://yourblog.example.com/xmlrpc.rb', # XML-RPC endpoint
                                  'your_blog_id', # Blog ID
                                  'username', # username
                                  'password', # password
                                  'proxy.example.com') # (Optional) proxy
```

### Post new entry

```ruby
  require 'metaweblog'

  post = MetaWeblog::Post.new('Title', 'Body')
  client.post(post)
```

`MetaWeblog::Client#post` returns `post_id` of new entry if the entry is posted successfully. 


### Get an existing entry

Just calling `get` method with post_id:

```ruby
  post = client.get(post_id)
```


### Edit an existing entry

```ruby
  modified_entry = MetaWeblog::Post.new('Fixed Title', 'Fixed Contents')
  client.edit(post_id, modified_entry)
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

