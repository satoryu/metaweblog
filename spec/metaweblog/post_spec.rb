require 'spec_helper'

describe MetaWeblog::Post do
  let(:post) { MetaWeblog::Post.new(*args) }

  describe '#initialize' do
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
    let(:args) { ['title', nil, nil, pubDate ] }

    context 'Given as String' do
      let(:pubDate) { 'Wed, 29 Jul 1981 21:16:00 +0900' }

      specify 'should be Time object' do
        expect(post.pubDate).to be_a(Time)
      end
    end
  end
end
