"3.22"

"The exercises below may be done in any order.
What’s most important is that you get comfortable with using the computer.
You don’t have to solve all of these problems; feel free to experiment and improvise on your own if you like."


[ "Part b" "For each following expression, write down what you think it
evaluates to or what kind of error it will cause. Then try it on the
computer and see."]

(+ 3 5) => 8

(3 + 5) => Illegal Function Call - Error

(+ 3 (5 6)) => Illegal Function Call - Error

(+ 3 (* 5 6)) => 33

'(morning noon night) => (MORNING NOON NIGHT)

('morning 'noon 'night) => Illegal Function Call - Error

(list 'morning 'noon 'night) => (MORNING NOON NIGHT)

(car nil) => nil

(+ 3 foo) => FOO variable is unbound

(+ 3 'foo) => The value FOO is not of type NUMBER


[ "Part C." "c. Here is an example of the function MYFUN, a strange function of
two inputs.
(myfun ’alpha ’beta)
 ⇒
 ((ALPHA) BETA)
Write MYFUN.
Test your function to make certain it works correctly." ]

(defun myfun (x y)
  (list (list x) (list y)))


[ "Part D." " Write a predicate FIRSTP that returns T if its first argument (a
symbol) is equal to the first element of its second argument (a list).
That is, (FIRSTP ’FOO ’(FOO BAR BAZ)) should return
T. (FIRSTP ’BOING ’(FOO BAR BAZ)) should return NIL.
" ]

(defun firstp (sym lst)
  (equal sym (car lst)))

[ "Part E." " Write a function MID-ADD1 that adds 1 to the middle element of a
three-element list.
 For example, (MID-ADD1 ’(TAKE 2
COOKIES)) should return the list (TAKE 3 COOKIES). Note: You
are not allowed to make MID-ADD1 a function of three inputs. It
has to take a single input that is a list of three elements." ]

(defun mid-add1 (x)
  (list (car x) (+ 1 (cadr x)) (caddr x)))

[ "Part F." " Write a function F-TO-C that converts a temperature from
Fahrenheit to Celsius. The formula for doing the conversion is:
Celsius temperature = [5 × (Fahrenheit temperature - 32)]/9. To go
in the opposite direction, the formula is: Fahrenheit temperature =
(9/5 × Celsius temperature) + 32." ]

(defun f-to-c (ftemp)
  (/ (* 5 (- ftemp 32)) 9.0))

[ "Part G." " What is wrong with this function? What does (FOO 5) do?
(defun foo (x) (+ 1 (zerop x)))" ]

[ "A." "The function 'zerop' ends with a 'p', therefore it's a predicate function. A predicate function returns only a 'T' or 'NIL'. The '+' function on the otherhand expects 'NUMBER' type as an input, so the inputs will be '5' and "T or NIL", therefore the '+' function will throw an Error" ]
