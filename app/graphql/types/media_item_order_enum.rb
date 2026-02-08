module Types
  class MediaItemOrderEnum < Types::BaseEnum
    value "CREATED_AT_DESC", value: "created_at_desc"
    value "CREATED_AT_ASC",  value: "created_at_asc"
    value "TITLE_ASC",       value: "title_asc"
    value "TITLE_DESC",      value: "title_desc"
  end
end
