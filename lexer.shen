(load "grammar.shen")

\*

JSON Lexer

1. Read a stream of characters
2. Whitespace characters not in strings should be discarded.
3. Whitespace characters in strings should be preserved
4. Strings can contain escaped double quotes. e.g. "\""

*\

(defcc <char>
  Char := Char;)

(defcc <char-stream>
  <char> <char-stream> :=  (append [<char>] <char-stream>);
  <e> := [];)

(defcc <lex-json-stream>
  [] := [];

  <double-quote> <string-chars> <double-quote> <char-stream> :=

  (append (append (cons <double-quote>
                        (explode <string-chars>))
                  [<double-quote>])
          (remove-from-list whitespacep <char-stream>));

  <char-stream> := (remove-from-list whitespacep <char-stream>);)
