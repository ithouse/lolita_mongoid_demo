class Post
  include Mongoid::Document
  include Lolita::Configuration

  field :title, type: String
  field :content, type: String
  belongs_to :author, :class_name => "Admin"

  lolita
end
