\* <pair> *\
\* <pair> -> <string> : <string> *\
(compile <pair> (explode "c#34;onec#34;:c#34;twoc#34;"))
\* <pair> -> <string> : <true> *\
(compile <pair> (explode "c#34;onec#34;:true"))
\* <pair> -> <string> : <false> *\
(compile <pair> (explode "c#34;onec#34;:false"))
\* <pair> -> <string> : <null> *\
(compile <pair> (explode "c#34;onec#34;:null"))
\* <pair> -> <string> : <array> *\
(compile <pair> (explode "c#34;onec#34;:[1,2,3,4,5,6]"))
\* <pair> -> <string> : <object> *\
\* </pair> *\
