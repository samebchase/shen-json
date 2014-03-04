\* <int> *\
(compile <int> (explode "1"))
(compile <int> (explode "-4"))
(compile <int> (explode "1234"))
(compile <int> (explode "-4567"))
\* these should fail as leading zeros are not allowed.
(compile <int> (explode "-04567"))
(compile <int> (explode "01234"))
*\
\* </int> *\


\* <fraction> *\
(compile <fraction> (explode ".1234"))
(compile <fraction> (explode ".0234"))
(compile <fraction> (explode ".0"))
\* </fraction> *\


\* <exp> *\
(compile <exp> (explode "e"))
(compile <exp> (explode "e+"))
(compile <exp> (explode "e-"))
(compile <exp> (explode "E"))
(compile <exp> (explode "E+"))
(compile <exp> (explode "E-"))
\* <\exp> *\

\* <exponent> *\
(compile <exponent> (explode "e23"))
(compile <exponent> (explode "E23"))
(compile <exponent> (explode "e+23"))
(compile <exponent> (explode "E+23"))

(compile <exponent> (explode "e-31"))
(compile <exponent> (explode "E-31"))
(compile <exponent> (explode "e+31"))
(compile <exponent> (explode "E+31"))
\* <exponent> *\

\* <number> *\
(compile <number> (explode "0"))
(compile <number> (explode "1234"))
(compile <number> (explode "-1234"))
(compile <number> (explode "123.456"))
(compile <number> (explode "-1234.67435"))

(compile <number> (explode "6.0221415e23"))
(compile <number> (explode "6.0221415E23"))
(compile <number> (explode "6.0221415e+23"))
(compile <number> (explode "6.0221415E+23"))

(compile <number> (explode "-9.10938188e-31"))
(compile <number> (explode "-9.10938188E-31"))
(compile <number> (explode "-9.10938188e+31"))
(compile <number> (explode "-9.10938188E+31"))
\* </number> *\
