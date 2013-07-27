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

(defcc <not-json-string>
  <chars-not-in-string> := <chars-not-in-string>;)

(defcc <lexer-element>
  <not-json-string> := (@s "" (consume-whitespace <not-json-string>));
  <string> := <string>;)

(defcc <lex-char>
  Char := Char;)

(defcc <lex-char-stream>
  <lex-char> <lex-char-stream> := (@s <lex-char> <lex-char-stream>);
  <e> := "")

(defcc <lex-json-string>
  <lexer-element> <lex-char-stream> := (@s <lexer-element> <lex-char-stream>);)

(define consume-whitespace
  "" -> ""

  (@s Whitespace Suffix) ->
  (@s "" (consume-whitespace Suffix)) where (whitespacep Whitespace)

  (@s NotWhitespace Suffix) ->
  (@s NotWhitespace (consume-whitespace Suffix)))

(compile <lex-json-string> (explode "c#34;Pr es er ve c#34;d o n't - p r e s e r v e - t h i s c#34;Pr es er vec#34;"))
