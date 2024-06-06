;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Consider the following short program. 

(define WIDTH  100)
(define HEIGHT 100)


(define (half-tw x)
  (+ x (/ (- WIDTH x) 2)))

;;Please spend 30 seconds thinking about what the half-tw function does before going to the next tab.

;;Now consider this version of the program. What does the half-th function do?

(define WIDTH  100)
(define HEIGHT 100)


(define (half-tw x)
  (+ x (/ (- WIDTH x) 2)))

;; Number -> Number
;; given a y coordinate, produce y coord half way between it and HEIGHT
(check-expect (half-th  0) (/ HEIGHT 2))
(check-expect (half-th 20) (+ 20 (/ (- HEIGHT 20) 2)))

(define (half-th y)
  (+ y (/ (- HEIGHT y) 2)))
  

;;You’ve now seen us use the HtDF recipe twice to design a very simple function. This is a point at which many students feel that it is too cumbersome, too complicated, too slow, or too something else.  You've also had a chance to read two functions you had never seen before, one using the HtDF recipe and one without.

;;What is your impression of the HtDF recipe? Does it seem too cumbersome? Too complex? Do you believe it might be helpful?