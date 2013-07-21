\* <int> *\
(compile <int> (explode "1"))
(compile <int> (explode "-4"))
(compile <int> (explode "1234"))
(compile <int> (explode "-4567"))
\* these should fail as leading zeros are not allowed. *\
(compile <int> (explode "-04567"))
(compile <int> (explode "01234"))
\* </int> *\


\* <fraction> *\
(compile <fraction> (explode ".1234"))
(compile <fraction> (explode ".0234"))
(compile <fraction> (explode ".0"))
\* </fraction> *\


\* <exp> *\

\* <\exp> *\

\* <number> *\
\* </number> *\
