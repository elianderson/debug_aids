# frozen_string_literal: true

def we_are_here(*context, delim: '*', reps: 3)
  c = caller_locations(1, 1).first
  $stdout << PP.pp([[delim * 99] * reps, [c.path, c.lineno], *context], +'', 120)
end
