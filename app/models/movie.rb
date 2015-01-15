class Movie < ActiveRecord::Base

  def self.search(search)
    if search
    where('title LIKE ?', "%#{search}%")
    else
    default_scoped
    end
  end
end
