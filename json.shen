(defcc <pair>
  <string> <colon> <value>;)

(defcc <colon> ;)  

(defcc <value>
  <string>;
  <number>;
  <object>;
  <array>;
  <true>;
  <false>;
  <null>;)

(defcc <string>
  <left-double-quote> <right-double-quote>;
  <left-double-quote> <chars> <right-double-quote>;)

(defcc <chars>
  <char>;
  <char> <chars>;)

(defcc <number> ;)

(defcc <object> 
 <left-curly-brace> <right-curly-brace>;
 <left-curly-brace> <members> <right-curly-brace>;)

(defcc <members>
  <pair>;
  <pair> <comma> <members>;)

(defcc <array>
 <left-angled-bracket> <right-angled-bracket>;
 <left-angled-bracket> <elements> <right-angled-bracket>;)

(defcc <elements>
  <value>;
  <value> <comma> <elements>;)

(defcc <true>
  "true";)

(defcc <false>
  "false";)
(defcc <null> ;)


  
  
  
