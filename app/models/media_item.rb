class MediaItem < ApplicationRecord
    has_many :media_requests, dependent: :destroy

    scope :search, ->(term){
        where("title ILIKE ?", "%#{search}%") if term.present?
    }

    scope :ordered_by, ->(order) {       
        case order
        when "created_at_desc" 
            order(created_at: :desc)
        when "created_at_asc" 
            order(created_at: :asc)
        when "title_desc" 
            order(title: :desc)
        when "title_asc" 
            order(title: :asc)
        else
            all
        end
    }
end
