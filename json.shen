(defcc <pair>
  <string> <colon> <value>
  := [pair [<string> <colon> <value>]];)

(defcc <colon>
  ":" := [colon ":"])

(defcc <value>
  <string>;
  <number>;
  <object>;
  <array>;
  <true>;
  <false>;
  <null>;)

(defcc <double-quote>
  "c#34;" := "c#34;";)

(defcc <backslash>
  "\" := "\";)

(defcc <any-char>
  Char := Char;)

(defcc <string-chars>
  "\" <any-char> <string-chars> := (cn <any-char> <string-chars>);
  <string-char> <string-chars> := (cn <string-char> <string-chars>);
  <e> := "";)

(defcc <string>
  <double-quote> <string-chars> <double-quote> := [string <string-chars>];)

(defcc <number> ;)

(defcc <object> 
 <left-curly-brace> <right-curly-brace>;
 <left-curly-brace> <members> <right-curly-brace>;)

(defcc <members>
  <pair>;
  <pair> <comma> <members>;)

(defcc <array>
 <left-square-bracket> <right-square-bracket>;
 <left-square-bracket> <elements> <right-square-bracket>;)

(defcc <elements>
  <value>;
  <value> <comma> <elements>;)

(defcc <left-square-bracket>
  "[" := skip;)

(defcc <right-square-bracket>
  "]" := skip;)

(defcc <comma>
  "," := skip;)

(defcc <true>
  "true" := skip;)

(defcc <false>
  "false" := skip;)

(defcc <null>
  "null" := skip;)

\*
test: <pair>
(compile <pair> (explode "c#34;onec#34;:c#34;twoc#34;"))
*\
