(define whitespacep
  \* e.g. ASCII 32 == #\Space. *\
  \* All the others are whitespace characters from an ASCII table. *\
  Char -> (element? Char ["c#32;" "c#9;" "c#10;" "c#11;" "c#12;" "c#13;"]))

(define remove-from-list
  Function [] -> []
  Function [First | Rest] ->
  (if (Function First)
      (remove-from-list Function Rest)
      (cons First (remove-from-list Function Rest))))
