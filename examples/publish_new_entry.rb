# encoding: utf-8

require 'metaweblog'

blog_id, username, password = *(ARGV.dup.first(3))

entry = MetaWeblog::Post.new({
  title: "Hello, MetaWeblog #{MetaWeblog::VERSION}",
  description: 'This entry has been posted by metaweblog gem.',
  pubDate: Time.new(2009, 4, 1)
})

client = MetaWeblog::Client.new("http://blog.fc2.com/xmlrpc.php",
                                blog_id,
                                username, password)

puts client.post(entry)
