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
  Char -> (member Char ["c#32;" "c#9;" "c#10;" "c#11;" "c#12;" "c#13;"]))

(defcc <not-quote>
  Char := Char where (not (= Char "c#34;"));)

(defcc <chars-not-in-string>
  <not-quote> <chars-not-in-string> := (@s <not-quote> <chars-not-in-string>);
  <e> := "";)  

(defcc <not-json-string-1>
  <chars-not-in-string> := <chars-not-in-string>;)

(defcc <not-json-string-2>
  <chars-not-in-string> := <chars-not-in-string>;)

(defcc <lexer-element>
  <string> := <string>;
  <not-json-string-1> := (consume-whitespace <not-json-string-1>);)

(defcc <lex-json-string>
  <not-json-string-1> <string> <not-json-string-2> :=
  (@s (consume-whitespace <not-json-string-1>)
      <string>
      (consume-whitespace <not-json-string-2>));
  <not-json-string-2> := (@s "" (consume-whitespace <not-json-string-2>));)

(define consume-whitespace
  "" -> ""

  (@s Whitespace Suffix) ->
  (@s "" (consume-whitespace Suffix)) where (whitespacep Whitespace)

  (@s NotWhitespace Suffix) ->
  (@s NotWhitespace (consume-whitespace Suffix)))
