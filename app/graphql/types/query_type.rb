module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :posts, [Types::PostType], null: false
    def posts
      Post.all.order(:created_at)
    end

    field :comments, [Types::CommentType], null: false
    def comments
      Comment.all.order(:created_at)
    end
  end
end
