\* <digit-1-to-9> *\
(compile <digit-1-to-9> ["1"])
(compile <digit-1-to-9> ["2"])
(compile <digit-1-to-9> ["3"])
(compile <digit-1-to-9> ["4"])
(compile <digit-1-to-9> ["5"])
(compile <digit-1-to-9> ["6"])
(compile <digit-1-to-9> ["7"])
(compile <digit-1-to-9> ["8"])
(compile <digit-1-to-9> ["9"])
\* </digit-1-to-9>*\


\* <digit> *\
(compile <digit> ["0"])
(compile <digit> ["1"])
(compile <digit> ["2"])
(compile <digit> ["3"])
(compile <digit> ["4"])
(compile <digit> ["5"])
(compile <digit> ["6"])
(compile <digit> ["7"])
(compile <digit> ["8"])
(compile <digit> ["9"])
\* </digit> *\

\* <digits> *\
(compile <digits> ["0"])
(compile <digits> ["1"])
(compile <digits> ["2"])
(compile <digits> ["3"])
(compile <digits> ["4"])
(compile <digits> ["5"])
(compile <digits> ["6"])
(compile <digits> ["7"])
(compile <digits> ["8"])
(compile <digits> ["9"])

(compile <digits> ["1" "3"])
(compile <digits> (explode "12344556"))
\* </digits> *\
