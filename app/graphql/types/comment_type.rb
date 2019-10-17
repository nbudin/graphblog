module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :post, Types::PostType, null: false
    field :body, String, null: true
    field :body_html, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false

    def body_html
      render_markdown(object.body)
    end
  end
end
