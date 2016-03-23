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

  def self.create(name, artist=nil, genre=nil)
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

  def to_s
    "#{self.artist.name} - #{self.name} - #{self.genre.name}"
  end

  def self.find_by_name(song_name)
    self.all.find {|song| song.name.eql? song_name}
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create(song_name)
  end

  def self.new_from_filename(filename)
    artist, song, genre = song_nomenclature(filename)
    Song.new(song,
            Artist.find_or_create_by_name(artist),
            Genre.find_or_create_by_name(genre.gsub(/.mp3/, '')))
  end

  def self.create_from_filename(filename)
    artist, song, genre = song_nomenclature(filename)
    Song.create(song,
            Artist.find_or_create_by_name(artist),
            Genre.find_or_create_by_name(genre.gsub(/.mp3/, '')))
  end

  def self.song_nomenclature(filename)
    filename_parts = filename.split(' - ')
    artist_, song_, genre_ = filename_parts
    return artist_, song_, genre_
  end

  private_class_method :song_nomenclature
end

