#!/usr/bin/env ruby
# encoding: UTF-8

class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    Song.new(name, artist, genre).save
  end

  def artist=(the_artist)
    @artist = the_artist
    the_artist.add_song(self)
  end

  def genre=(the_genre)
    @genre = the_genre
    the_genre.songs << self unless the_genre.songs.include? self
  end
end

