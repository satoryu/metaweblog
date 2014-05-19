# encoding: utf-8

module MetaWeblog

  class Post
    def self.members
      [:title, :link, :description, :pubDate]
    end

    def initialize(*args)
      @data = {}

      if args.length == 1 && args.last.is_a?(Hash)
        h = args.last
        data = self.class.members.map { |m| (h[m] || h[m.to_s]) }
      else
        data = args
      end
      self.class.members.each_with_index do |member, i|
        self.__send__ "#{member}=", data[i] if data[i]
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

      define_method "#{member}=" do |val|
        @data[member] = val
      end
    end

    def pub_date=(pub_date)
      @data[:pubDate] = case pub_date
        when String then Time.parse(pub_date)
        when Time, DateTime then pub_date
        else
          raise ArgumentError, "The argument is not String, Time and DateTime."
        end
    end
    alias :pubDate= :pub_date=

  end
end
