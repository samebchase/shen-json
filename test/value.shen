\* <value> *\

\* <value> -> <string> *\
(compile <value> (explode "c#34;foobarc#34;"))
\* <value> -> <true> *\
(compile <value> (explode "true"))
\* <value> -> <false>  *\
(compile <value> (explode "false"))
\* <value> -> <null> *\
(compile <value> (explode "null"))
\* <value> -> <array> *\
\* <value> -> <number> *\
\* <value> -> <object> *\

\* </value> *\
