# Първа седмица 
## Семинар - Функционално програмиране
#### Процедури:
```scheme 
 (+ a b) 
 (- a b)
 (* a b)
 (remainder a b) - взима остатъка 123 10 -> 3
 (quotient a b) - взима частно 123 10 -> 12
 (modulo a b) - взима остатъка 123 10 -> 3
 (= a b)
 (> a b)
 (< a b)
 (>= a b)
 (<= a b)
 (not a)
 (and a1..an)
 (or a1..an)
```
#### Дефиниране на процедура
```scheme
(define (<name> var) (<body>))
```
#### Ако - if
```scheme
(if (<condition>)
    (<if-true>)
    (<if-false>))
```
#### Условност - cond
```scheme
(cond ((<condition-1>) (<condition-1-body>))
      ((<condition-2>) (<condition-2-body>))
      ...
      ((<condition-n>) (<condition-n-body>))
      (else (<default-body>)))
```
#### Полезни неща, записани по време на семинара
по отношение на писането на код:
* допълнителните скоби създават проблеми
* не трябва да има скоби, който да са сами на ред
* затварящите скоби трябва да бъдат максимално приближени една до друга
#### Полезни линкове
* https://docs.racket-lang.org - документация
* http://community.schemewiki.org/?scheme-style - стил на писане
* https://repl.it - за писане на езика Scheme онлайн