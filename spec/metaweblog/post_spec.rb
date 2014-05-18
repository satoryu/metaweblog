require 'spec_helper'

describe MetaWeblog::Post do
  describe '#initialize' do
    let(:post) { MetaWeblog::Post.new(*args) }

    context 'Given an array of values' do
      let(:args) do
        [ 'title', 'http://blog.example.com/1234', 'desc' ]
      end

      specify '' do
        expect(post.title).to eq('title')
        expect(post.link).to eq('http://blog.example.com/1234')
        expect(post.description).to eq('desc')
      end
    end

    context 'Given only a hash' do
      let(:args) do
        [{ :title => 'Hello', 'description' => 'This is blog', :extra => 'not defined' }]
      end

      specify 'should assign values for members' do
        expect(post[:title]).to eq(args[0][:title])
        expect(post[:description]).to eq(args[0]['description'])
        expect(post[:link]).to be_nil
      end
    end
  end

  describe '#pubDate' do
  end
end
