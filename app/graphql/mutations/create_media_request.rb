module Mutations
  class CreateMediaRequest < BaseMutation
      
    argument :media_item_id, ID, required: true

    field :media_request, Types::MediaRequestType, null: true
    field :errors, [String], null: false

    def resolve(media_item_id:)
      user = context[:current_user]
      media_item = MediaItem.find(media_item_id)

      media_request = MediaRequest.new(
        user: user,
        media_item: media_item,
        status: "requested",
        
      )

      if media_request.save
        { media_request: media_request, errors: [] }
      else 
        { media_request: nil, errors: media_request.errors.full_messages }
      end
    end
  end
end
