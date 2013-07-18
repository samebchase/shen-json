(defcc <left-square-bracket>
  "[" := [array-begin "["];)

(defcc <right-square-bracket>
  "]" := [array-end "]"];)

(defcc <comma>
  "," := [comma ","];)

(defcc <true>
  "t" "r" "u" "e" := [bool "true"];)

(defcc <false>
  "f" "a" "l" "s" "e" := [bool "false"];)

(defcc <null>
  "n" "u" "l" "l" := [null "null"];)

(defcc <colon>
  ":" := [colon ":"])

(defcc <double-quote>
  "c#34;" := "c#34;";)

(defcc <backslash>
  "\" := "\";)

(defcc <any-char>
  Char := Char;)

(defcc <string-char>
  Char := Char where (not (= Char "c#34;"));)

(defcc <string-chars>
  "\" <any-char> <string-chars> := (cn <any-char> <string-chars>);
  <string-char> <string-chars> := (cn <string-char> <string-chars>);
  <e> := "";)

(defcc <string>
  <double-quote> <string-chars> <double-quote> := [string <string-chars>];)

(defcc <number> ;)

(defcc <pair>
  <string> <colon> <value>
  := [pair [<string> <colon> <value>]];)

(defcc <value>
  <true>;
  <false>;
  <null>;
  <string>;
  <number>;
  <object>;
  <array>;)

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
