(load "util.shen")

(defcc <left-square-bracket>
  "[" := "[";)

(defcc <right-square-bracket>
  "]" := "]";)

(defcc <comma>
  "," := ",";)

(defcc <true>
  "t" "r" "u" "e" := "true";)

(defcc <false>
  "f" "a" "l" "s" "e" := "false";)

(defcc <null>
  "n" "u" "l" "l" := "null";)

(defcc <colon>
  ":" := ":";)

(defcc <double-quote>
  "c#34;" := "c#34;";)

(defcc <minus>
  "-" := "-";)

(defcc <plus>
  "+" := "+";)

(defcc <decimal-point>
  "." := ".";)

(defcc <backslash>
  "\" := "\";)

(defcc <any-char>
  Char := Char;)

(defcc <string-char>
  Char := Char where (not (= Char "c#34;"));)

(defcc <string-chars>
  "\" <any-char> <string-chars> := (@s <any-char> <string-chars>);
  <string-char> <string-chars> := (@s <string-char> <string-chars>);
  <e> := "";)

(defcc <string>
  <double-quote> <string-chars> <double-quote> := (@s <double-quote> <string-chars> <double-quote>);)

(defcc <digit-1-to-9>
  Digit-1-to-9 := Digit-1-to-9 where (member Digit-1-to-9 (explode "123456789"));)

(defcc <digit>
  Digit := Digit where (member Digit (explode "0123456789"));)

(defcc <digits-star>
  <digit> <digits-star> := (@s <digit> <digits-star>);
  <e> := "";)

(defcc <digits>
  <digit-1-to-9> <digits-star> := (@s <digit-1-to-9> <digits-star>);
  <digit> := <digit>;)

(defcc <digits-with-leading-zeros>
  <digit> <digits-star> := (@s <digit> <digits-star>);)

(defcc <fraction>
  <decimal-point> <digits-with-leading-zeros> := (@s <decimal-point> <digits-with-leading-zeros>);)

(defcc <int>
  <digits> := <digits>;
  <minus> <digits> := (@s <minus> <digits>);)

(defcc <exp>
  "e" "+" := (@s "e" "+");
  "e" "-" := (@s "e" "-");
  "E" "+" := (@s "E" "+");
  "E" "-" := (@s "E" "-");
  "E"     := "E";
  "e"     := "e";)

(defcc <exponent>
  <exp> <digits> := (@s <exp> <digits>);)

(defcc <number>
  <int> <fraction> <exponent> := (@s <int> <fraction> <exponent>);
  <int> <exponent> := (@s <int> <exponent>);
  <int> <fraction> := (@s <int> <fraction>);
  <int> := <int>;)

(defcc <elements>
  <value> <comma> <elements> := (@s <value> <comma> <elements>);
  <value> := <value>;)

(defcc <array>
  "[" "]"            := (@s "[" "]");
  "[" <elements> "]" := (@s "[" <elements> "]");)

(defcc <object>
  "{" "}"            := (@s "{" "}");
  "{" <members> "}"  := (@s "{" <members> "}");)

(defcc <pair>
  <string> <colon> <value> := (@s <string> <colon> <value>);)

(defcc <members>
  <pair> <comma> <members> := (@s <pair> <comma> <members>);
  <pair> := <pair>;)

(defcc <value>
  <string> := <string>;
  <number> := <number>;
  <array> := <array>;
  <object> := <object>;
  <true> := <true>;
  <false> := <false>;
  <null> := <null>;)
