#!/usr/bin/env ruby
# encoding: UTF-8

module Concerns::Findable
  def find_by_name(name)
    all.find { |x| x.name.eql? name }
  end

  def find_or_create_by_name(name)
    find_by_name(name) || create(name)
  end
end
