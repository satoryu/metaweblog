# encoding: utf-8

require 'spec_helper'

describe MetaWeblog::Client do
  before do
    @client = MetaWeblog::Client.new('http://blog.example.com/xmlrpc',
                                     'blog_id', 'username', 'password')
    @xml_client = stub()
    @client.instance_variable_set(:@client, @xml_client)
  end

  describe "#post" do
    let(:expected_post) { MetaWeblog::Post.new('title', 'hogehoge') }

    before do
      @xml_client.should_receive(:call).with('metaWeblog.newPost',
                                             'blog_id',
                                             'username', 'password',
                                             expected_post, true)
    end

    it do
      expect { @client.post(expected_post) }.not_to raise_error
    end
  end

  describe "#get" do
    let(:post_id) { 12345 }

    before do
      @xml_client.should_receive(:call).with('metaWeblog.getPost', post_id, 'username', 'password')
    end

    it do 
      expect { @client.get(post_id) }.not_to raise_error
    end
  end
end
