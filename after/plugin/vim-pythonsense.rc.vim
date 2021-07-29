" Pythonsense
"
" Pythonsense is a Vim plugin that provides text objects and motions for Python classes, methods, functions, and doc strings.
"
" class OneRing(object):             -----------------------------+
"                                    --------------------+        |
"     def __init__(self):                                |        |
"         print("One ring to ...")                       |        |
"                                                        |        |
"     def rule_them_all(self):                           |        |
"         self.find_them()                               |        |
"                                                        |        |
"     def find_them(self):           ------------+       |        |
"         a = [3, 7, 9, 1]           ----+       |       |        |
"         self.bring_them(a)             |- `if` |- `af` |- `ic`  | - `ac`
"         self.bind_them("darkness") ----+       |       |        |
"                                    ------------+       |        |
"     def bring_them_all(self, a):                       |        |
"         self.bind_them(a, "#000")                      |        |
"                                                        |        |
"     def bind_them(self, a, c):                         |        |
"         print("shadows lie.")      --------------------+        |
"                                    -----------------------------+

map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)

map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> M <Plug>(PythonsenseEndOfPreviousPythonFunction)

map <buffer> g: <Plug>(PythonsensePyWhere)
