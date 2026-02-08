module Types
  class MediaTypeEnum < Types::BaseEnum
    value "MOVIE", value: "movie", description: "A movie"
    value "TV",    value: "tv",    description: "A TV show"
  end
end
