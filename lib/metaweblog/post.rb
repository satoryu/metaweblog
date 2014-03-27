module MetaWeblog
  POST_MEMBERS = [:title, :link, :description]
  Post = Struct.new(*POST_MEMBERS)
end
