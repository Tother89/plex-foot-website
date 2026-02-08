# frozen_string_literal: true

module Types
  class MediaRequestType < Types::BaseObject
    field :id, ID, null: false
    field :status, String, null: false
    field :user, Types::UserType, null: false
    field :media_item, Types::MediaItemType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
