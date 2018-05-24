
When you have an array of 2 you should not use sort to put them in order

```ruby
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
```

```bash
./run.rb
       user     system      total        real
order_by_sort  0.360000   0.000000   0.360000 (  0.368095)
order_with_if  0.190000   0.010000   0.200000 (  0.197681)
```
