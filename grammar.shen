(load "util.shen")

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
  <double-quote> <string-chars> <double-quote> := [string <string-chars>];)

(defcc <digit-1-to-9>
  Digit-1-to-9 := Digit-1-to-9 where (member Digit-1-to-9 (explode "123456789"));)

(defcc <digit>
  Digit := Digit where (member Digit (explode "0123456789"));)

(defcc <digits-star>
  <digit> <digits-star> := (@s <digit> <digits-star>);
  <e> := "";)

(defcc <digits>
  "0" := "0";
  <digit-1-to-9> <digits-star> := (@s <digit-1-to-9> <digits-star>);)

(defcc <fraction>
  <decimal-point> <digits> := (@s <decimal-point> <digits>);)

(defcc <int>
  <digits> := <digits>;
  <minus> <digits> := (@s <minus> <digits>);)

(defcc <number>
  <int>;
  <int> <fraction>;
  <int> <exponent>;
  <int> <fraction> <exponent>;)

(defcc <exponent>
  <exp> <digits>;)

(defcc <exp-lowercase>
  "e" := "e";)

(defcc <exp-uppercase>
  "E" := "E";)

(defcc <exp-symbol>
  <exp-lowercase> := <exp-lowercase>;
  <exp-uppercase> := <exp-uppercase>;)

(defcc <exp-compound-form>
  <exp-symbol> <plus> := (@s <exp-symbol> <plus>);
  <exp-symbol> <minus> := (@s <exp-symbol> <minus>);)

(defcc <exp>
  <exp-compound-form> := <exp-compound-form>;
  <exp-symbol> := <exp-symbol>;)

(defcc <exp-alter>
  "e" "+" := (@s "e" "+");
  "e" "-" := (@s "e" "-");
  "E" "+" := (@s "E" "+");
  "E" "-" := (@s "E" "-");
  "E"     := "E";
  "e"     := "e";)

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
