# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true, description: "ID of the object."
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ID], required: true, description: "IDs of the objects."
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    field :media_items, [Types::MediaItemType], null: false do
      argument :media_type, Types::MediaTypeEnum, required: false
      argument :search, String, required: false
      argument :order, Types::MediaItemOrderEnum, required: false
    end
    def media_items(media_type: nil, search: nil, order: nil)
      scope = MediaItem.all
      scope = scope.where(media_type: media_type) if media_type.present?
      scope = scope.search(search)
      scope = scope.ordered_by(order)
      scope
    end   
  end
end
