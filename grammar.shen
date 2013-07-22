(load "util.shen")

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

(defcc <hex-char>
  Char := Char where (member Char (explode "0123456789ABCDEFabcdef")))

(defcc <hex-char-1>
  <hex-char> := <hex-char>;)

(defcc <hex-char-2>
  <hex-char> := <hex-char>;)

(defcc <hex-char-3>
  <hex-char> := <hex-char>;)

(defcc <hex-char-4>
  <hex-char> := <hex-char>;)

(defcc <unicode-char>
  <hex-char-1> <hex-char-2> <hex-char-3> <hex-char-4> :=
  (@s <hex-char-1> <hex-char-2> <hex-char-3> <hex-char-4>);)
 
(defcc <string-char>
  Char := Char where (not (member Char ["c#34;" "\"]));)

(defcc <allowed-escaped-char>
  Char           := Char where (member Char ["c#34;" "\" "/" "b" "f" "n" "r" "t" "u"]);
  <unicode-char> := <unicode-char>;)

(defcc <string-chars>
  "\" <allowed-escaped-char> <string-chars> := (@s "\" <allowed-escaped-char> <string-chars>);
  <string-char> <string-chars>  := (@s <string-char> <string-chars>);
  <e>                           := "";)

(defcc <string>
  <double-quote> <string-chars> <double-quote> :=
  (@s <double-quote> <string-chars> <double-quote>);)

(defcc <digit-1-to-9>
  Digit-1-to-9 := Digit-1-to-9 where
  (member Digit-1-to-9 (explode "123456789"));)

(defcc <digit>
  Digit := Digit where
  (member Digit (explode "0123456789"));)

(defcc <digits-star>
  <digit> <digits-star> := (@s <digit> <digits-star>);
  <e>                   := "";)

(defcc <digits>
  <digit-1-to-9> <digits-star> := (@s <digit-1-to-9> <digits-star>);
  <digit> := <digit>;)

(defcc <digits-with-leading-zeros>
  <digit> <digits-star> := (@s <digit> <digits-star>);)

(defcc <fraction>
  <decimal-point> <digits-with-leading-zeros> := (@s <decimal-point> <digits-with-leading-zeros>);)

(defcc <int>
  <digits>         := <digits>;
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
  <int> <exponent>            := (@s <int> <exponent>);
  <int> <fraction>            := (@s <int> <fraction>);
  <int>                       := <int>;)

(defcc <elements>
  <optional-spaces> <value> <optional-spaces> <comma> <optional-spaces> <elements> := (@s <value> <comma> <elements>);
  <optional-spaces> <value> <optional-spaces>                   := <value>;)

(defcc <whitespace-char>
  " " := " ";)

(defcc <space>
  <whitespace-char> := <whitespace-char>;)

(defcc <optional-spaces>
  <space> <optional-spaces> := (@s <space> <optional-spaces>);
  <e> := "";)

(defcc <array>
  "[" <optional-spaces> "]"            := (@s "[" "]");
  "[" <elements> "]" := (@s "[" <elements> "]");)

(defcc <object>
  "{" <optional-spaces> "}"            := (@s "{" "}");
  "{" <members> "}"  := (@s "{" <members> "}");)

(defcc <pair>
  <string> <optional-spaces> <colon> <optional-spaces> <value> := (@s <string> <colon> <value>);)

(defcc <members>
  <pair> <optional-spaces> <comma> <optional-spaces> <members> := (@s <pair> <comma> <members>);
  <pair>                   := <pair>;)

(defcc <value>
  <string> := <string>;
  <number> := <number>;
  <array>  := <array>;
  <object> := <object>;
  <true>   := <true>;
  <false>  := <false>;
  <null>   := <null>;)
