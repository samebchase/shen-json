(define member
  _ [] -> false
  X [X | _] -> true
  X [_ | Y] -> (member X Y))
