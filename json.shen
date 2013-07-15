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
  "c#34;" := skip;)

(defcc <string>
  <double-quote> <string-chars> <double-quote>
  := [string <string-chars>];)

(defcc <string-char>
  Char := Char where (not (= Char "c#34;"));)

(defcc <string-chars>
  <string-char> <string-chars> := (cn <string-char> <string-chars>);
  <e> := "";)

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


  
  
  
