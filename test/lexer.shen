(remove-from-list whitespacep [])
(remove-from-list whitespacep [" "])
(remove-from-list whitespacep ["a" "b" "c"])
(remove-from-list whitespacep ["a" " " "b" "c"])
(remove-from-list whitespacep ["" " " "\n" "a" "b" " " "c" "d"])

(compile <lex-json-stream> (explode ""))
(compile <lex-json-stream> (explode "{}"))
(compile <lex-json-stream> (explode "c#34;"))
(compile <lex-json-stream> (explode "c#34;c#34;"))
(compile <lex-json-stream> (explode "c#34; foo bar baz c#34;"))
(compile <lex-json-stream> (explode "c#34;o nec#34; asdlf "))
(compile <lex-json-stream> (explode "Don't p r e s e r vec#34;P r e s e r v ec#34;"))
(compile <lex-json-stream> (explode "c#34;Pr es er ve c#34;d o n't - p r e s e r v e - t h i s c#34;Pr es er vec#34;"))


