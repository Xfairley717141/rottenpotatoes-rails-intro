class Movie < ActiveRecord::Base

  def self.with_ratings(ratings_list, sort_by)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
   if ratings_list.nil?
      all.order sort_by
     else
     where(rating: ratings_list.map(&:upcase)).order sort_by
  end
  end
    def self.all_ratings
      return ['G','PG','PG-13','R']
    end
    
    def self.ratings_to_show
    end
end
