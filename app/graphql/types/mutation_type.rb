module Types
  class MutationType < Types::BaseObject
    field :createComment, mutation: Mutations::CreateComment
  end
end
