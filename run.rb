#!/usr/bin/env ruby
require 'benchmark'

require './klass.rb'
require './instance.rb'
require './instance_as_class.rb'

methods = %w( add subtract identity )


def order_by_sort(val1, val2)
  [val1, val2].sort
end

def order_with_if(val1, val2)
  if val1 < val2
    [val1, val2]
  else
    [val2, val1]
  end
end

def validate(arr)
  raise "OUT OF ORDER" unless arr[0] <= arr[1]
end

NUM_REPS = 1000000
Benchmark.bm do |b|
  x = rand
  y = rand

  [ :order_by_sort, :order_with_if ].each do |method|
    b.report(method) { NUM_REPS.times { validate(send(method, x, y)) } }
  end
end
