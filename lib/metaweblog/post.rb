# encoding: utf-8

module MetaWeblog

  class Post
    def self.members
      [:title, :link, :description]
    end

    def initialize(*args)
      @data = {}

      if args.length == 1 && args.last.is_a?(Hash)
        h = args.last
        self.class.members.each do |member|
          @data[member] = h[member] || h[member.to_s]
        end
      else
        self.class.members.each_with_index do |member, i|
          @data[member] = args[i]
        end
      end
    end

    def [](m)
      @data[m]
    end

    def to_h
      @data.dup
    end

    members.each do |member|
      define_method member do
        @data[member]
      end
    end
  end
end
