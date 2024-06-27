;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname mytexteditor) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
require 2htdp/universe)
(require 2htdp/image)

;; Constants
; Scene
(define SCENE-WIDTH 500)
(define SCENE-HEIGHT 40)
(define SCENE (empty-scene SCENE-WIDTH SCENE-HEIGHT))
; Text
(define TEXT-SIZE 20)
(define TEXT-COLOR "black")
(define TEXT-LPADDING -10)
; Cursor
(define CURSOR-IMG (rectangle 1 TEXT-SIZE "solid" "red"))
;;=============================================================
;; Data definitions
(define-struct editor [pre post])
; Editor = (make-editor String String)
; interpretation (make-editor s t) means the text in the editor is
; (string-append s t) with the cursor displayed between s and t

(define ed1 (make-editor "Hello" " World"))
(define ed2 (make-editor "GoodBye" "..."))

#;
(define (fn-for-editor ed)
  (...
   (editor-pre ed)
   (editor-post ed)))
; Template rules used:
; - compound: 2 fields



;; editor -> editor
;; called to make the editor ready yo write; start with ...
;; no tests for main function

(define (main ws)
  (big-bang ws                   ; WS
            (on-tick   tock)     ; WS -> WS
            (to-draw   render)   ; WS -> Image
            (on-mouse  ...)      ; WS Integer Integer MouseEvent -> WS
            (on-key    ...)))    ; WS KeyEvent -> WS



