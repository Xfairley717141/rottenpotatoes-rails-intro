class Movie < ActiveRecord::Base

  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
   if ratings_list.nil?
      all 
     else
     where(rating: ratings_list.map(&:upcase))
  end
  end
    def self.all_ratings
      return ['G','PG','PG-13','R']
    end
    
    def self.ratings_to_show
    end
end
