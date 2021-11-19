class AuthorPostSerializer < ActiveModel::Serializer

  attributes :id, :title, :short_content, :tags 

  def short_content
    "#{self.object.content[0..39]}..."
  end

  belongs_to :author
  # has_many :tags, through: :post_tags
end
