(load "grammar.shen")

\*

JSON Lexer

1. Read a stream of characters
2. Whitespace characters not in strings should be discarded.
3. Whitespace characters in strings should be preserved
4. Strings can contain escaped double quotes. e.g. "\""

*\
(define whitespacep
  \* e.g. ASCII 32 == #\Space. *\
  \* All the others are whitespace characters from an ASCII table. *\
  Char -> (member Char ["c#9;" "c#10;" "c#11;" "c#12;" "c#13;" "c#32;"]))

(define consume-whitespace
  "" -> ""

  (@s Whitespace Suffix) ->
  (@s "" (replace-whitespace Suffix)) where (whitespacep Whitespace)

  (@s NotWhitespace Suffix) ->
  (@s NotWhitespace (replace-whitespace Suffix)))
