#!/usr/bin/env ruby

def hello
  yield
end

hello { puts "Nice, this is cool"  }
