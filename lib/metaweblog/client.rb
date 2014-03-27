# encoding: utf-8

require 'metaweblog/post'
require 'xmlrpc/client'

module MetaWeblog
  class Client
    attr_reader :uri, :proxy, :blog_id, :username, :password, :client

    def initialize(uri, blog_id, username, password, proxy = nil)
      @uri = uri
      @proxy = proxy
      @blog_id = blog_id
      @username = username
      @password = password
      @client = XMLRPC::Client.new2(@uri, @proxy)
    end

    def get(post_id)
      client.call('metaWeblog.getPost', post_id, username, password)
    end

    def post(post, publish=true)
      client.call('metaWeblog.newPost', blog_id, username, password, post, publish)
    end

    def edit(post_id, post, publish=true)
      client.call('metaWeblog.editPost', post_id, username, password, post, publish)
    end

    def recent_posts(n=10)
      client.call('metaWeblog.getRecentPosts', blog_id, username, password, n)
    end
  end
end
