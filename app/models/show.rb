class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        show = Show.all.find {|show| show.rating == Show.highest_rating}
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        show = Show.all.find {|show| show.rating == Show.lowest_rating}
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        shows = Show.all.select {|show| show.rating > 5}
    end

    def self.shows_by_alphabetical_order
        Show.group(:name)
    end

end