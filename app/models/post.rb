class Post
  include Mongoid::Document
  include Lolita::Configuration

  field :name, :type => String
  field :content, :type => String

  lolita do
    tab(:content) do
      field :name
      field :content, :string, :builder => :text
    end
  end
end
