class ArticleSerializer < ActiveModel::Serializer

  attributes :id, :name, :content, :created_at, :updated_at

end

