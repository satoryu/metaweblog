# encoding: utf-8

require 'metaweblog'

blog_id, username, password = *(ARGV.dup.first(3))

client = MetaWeblog::Client.new("http://blog.fc2.com/xmlrpc.php",
                                blog_id,
                                username, password)

client.recent_posts.each do |post|
  puts post
end
