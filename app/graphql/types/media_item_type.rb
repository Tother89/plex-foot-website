# frozen_string_literal: true

module Types
  class MediaItemType < Types::BaseObject
    field :id, ID, null: false
    field :tmdb_id, String, null: false
    field :media_type, String, null: false
    field :title, String, null: false
    field :release_year, Integer, null: true
    field :media_requests, [Types::MediaRequestType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
