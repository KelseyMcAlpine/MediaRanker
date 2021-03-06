class Work < ApplicationRecord
  has_many :votes

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: %w(book album movie) }

  def top_spotlight
    # select work with the most votes
    # how will it handle a tie?
  end


  # to think about for all:
  # what if there are less than 10 works in category category
  # what if more than one have same number of votes
  # how will it handle if votes count = 0

  def top_movies
    # find all works that have a category of 'movie'
    # sort from highest number of votes to lowest number of votes
    # select top 10 movies
  end

  def top_books

    # find all works that have a category of 'book'
    # sort from highest number of votes to lowest number of votes
    # select top 10 books
  end

  def top_albums

    # find all works that have a category of 'album'
    # sort from highest number of votes to lowest number of votes
    # select top 10 albums
  end
end
