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
\* </string> *\
