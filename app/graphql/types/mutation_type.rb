# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_media_request, mutation: Mutations::CreateMediaRequest
  end
end
