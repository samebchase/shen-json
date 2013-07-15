(set *src-dir-path* "/home/samuel/code/lang/shen/json-parser/src/"
(load (cn (value *src-dir-path*) "json.shen"))

(compile <true> ["true"])
(compile <false> ["false"])
(compile <null> ["null"])

(compile <comma> [","])
(compile <colon> [":"])

(compile <string> (explode "c#34;foo-bar-bazc#34;"))

(compile <value> (explode "c#34;foobarc#34;"))

(compile <pair> (explode "c#34;onec#34;:c#34;twoc#34;"))
