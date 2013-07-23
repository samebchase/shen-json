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

\* Incrementally parse the object in test-data/object.shen *\

(compile <object> (explode "{c#34;firstnamec#34;:c#34;Johnc#34;,c#34;lastnamec#34;:c#34;Smithc#34;}"))

(compile <object> (explode "{c#34;firstnamec#34;:c#34;Johnc#34;,c#34;lastnamec#34;:c#34;Smithc#34;,c#34;agec#34;:25,c#34;addressc#34;:{c#34;streetAddressc#34;:c#34;21 2nd streetc#34;}}"))
\* </object> *\
