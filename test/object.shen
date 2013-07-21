\* <object> *\
(compile <object> (explode "{}"))
(compile <object> (explode "{c#34;onec#34;:c#34;twoc#34;}"))
\* <object> -> { <string> : <true> } *\
(compile <object> (explode "{c#34;onec#34;:true}"))
\* <object> -> { <string> : <false> } *\
(compile <object> (explode "{c#34;onec#34;:false}"))
\* <object> -> { <string> : <null> } *\
(compile <object> (explode "{c#34;onec#34;:null}"))
\* <object> -> { <string> : <number> } *\
(compile <object> (explode "{c#34;pic#34;:3.14159}"))
\* <object> -> { <string> : <array> } *\
(compile <object> (explode "{c#34;array-contentsc#34;:[1,2,3,4,5,6]}"))
\* </object> *\
