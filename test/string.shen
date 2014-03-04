\* <hex-char> *\
(compile <hex-char> (explode "0"))
(compile <hex-char> (explode "1"))
(compile <hex-char> (explode "2"))
(compile <hex-char> (explode "3"))
(compile <hex-char> (explode "4"))
(compile <hex-char> (explode "5"))
(compile <hex-char> (explode "6"))
(compile <hex-char> (explode "7"))
(compile <hex-char> (explode "8"))
(compile <hex-char> (explode "9"))
(compile <hex-char> (explode "A"))
(compile <hex-char> (explode "B"))
(compile <hex-char> (explode "C"))
(compile <hex-char> (explode "D"))
(compile <hex-char> (explode "E"))
(compile <hex-char> (explode "F"))
(compile <hex-char> (explode "a"))
(compile <hex-char> (explode "b"))
(compile <hex-char> (explode "c"))
(compile <hex-char> (explode "d"))
(compile <hex-char> (explode "e"))
(compile <hex-char> (explode "f"))
\* </hex-char> *\

\* <unicode-char *\
(compile <unicode-char> (explode "\u1234"))
(compile <unicode-char> (explode "\u12ed"))
(compile <unicode-char> (explode "\u98Ae"))
(compile <unicode-char> (explode "\u0000"))
(compile <unicode-char> (explode "\uFFFF"))
\* </unicode-char> *\






\* <string> *\
\* #c34; is the character representation of '"' *\

\* Empty string: """"  *\
(compile <string> (explode "c#34;c#34;"))
\* Basic string: ""foo-bar-baz""  *\
(compile <string> (explode "c#34;foo-bar-bazc#34;"))
\* String containing a single escaped quote: ""\"""  *\
(compile <string> (explode "c#34;\c#34;c#34;"))
\* String with containing multiple escaped quotes and other text:
\* ""\"one.two.\"three"" *\
(compile <string> (explode "c#34;\c#34;one.two.\c#34;threec#34;"))

(compile <string> (explode "c#34;This w h i t e s p a c e should be preserved.c#34;"))
\* </string> *\
