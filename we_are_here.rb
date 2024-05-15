# frozen_string_literal: true

require 'pp'

def we_are_here(*context, delim: '-', reps: 1, width: 120)
  block_delim = [delim * width] * reps
  location = caller_locations(1, 1).first
  msg = [block_delim, "#{location.path}:#{location.lineno}", block_delim].flatten
  msg.push(*context, *block_delim) unless context.empty?

  PP.pp(msg, +'', width)
end
