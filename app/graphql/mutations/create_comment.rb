module Mutations
  class CreateComment < GraphQL::Schema::RelayClassicMutation
    field :comment, Types::CommentType, null: false

    argument :post_id, ID, required: true
    argument :body, String, required: true

    def resolve(post_id:, body:)
      post = Post.find(post_id)
      comment = post.comments.create!(body: body)

      { comment: comment }
    end
  end
end
