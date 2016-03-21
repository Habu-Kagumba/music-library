#!/usr/bin/env ruby
# encoding: UTF-8

class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[File.join(@path, '*.mp3')].map do |file|
      file.gsub(/#{@path}\//, '')
    end
  end

  def import
    files.each {|file| Song.create_from_filename(file)}
  end
end

