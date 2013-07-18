(load "json.shen")

(compile <true> (explode "true"))
(compile <false> (explode "false"))
(compile <null> (explode "null"))

(compile <comma> [","])
(compile <colon> [":"])

\* Basic string *\
(compile <string> (explode "c#34;foo-bar-bazc#34;"))
\* String with escaped quotes i.e. \" *\
(compile <string> (explode "c#34;c#34;"))

\* Tests: <value> *\

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

\* Tests: <pair> *\

\* <pair> -> <string> : <string> *\
(compile <pair> (explode "c#34;onec#34;:c#34;twoc#34;"))
\* <pair> -> <string> : <true> *\
(compile <pair> (explode "c#34;onec#34;:true"))
\* <pair> -> <string> : <false> *\
(compile <pair> (explode "c#34;onec#34;:false"))
\* <pair> -> <string> : <null> *\
(compile <pair> (explode "c#34;onec#34;:null"))
\* <pair> -> <string> : <array> *\
\* <pair> -> <string> : <object> *\
