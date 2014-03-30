# encoding: utf-8

module MetaWeblog
  POST_MEMBERS = [:title, :link, :description]

  Post = Struct.new(*POST_MEMBERS) do
    def initialize(*args)
      if args.length == 1 && args.last.is_a?(Hash)
        h = args.last
        self.members.each do |member|
          self[member] = h[member]
        end
      else
        super
      end
    end
  end
end
