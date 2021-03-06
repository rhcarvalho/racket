#lang racket

(require rackunit rackunit/text-ui unstable/port "helpers.rkt")

(run-tests
 (test-suite "port.rkt"
   (test-suite "read-all"
     (test-ok (check-equal? (read-all read (open-input-string "1 2 3"))
                            (list 1 2 3)))
     (test-ok (check-equal?
               (parameterize ([current-input-port
                               (open-input-string "1 2 3")])
                 (read-all))
               (list 1 2 3))))
   (test-suite "read-all-syntax"
     (test-ok (check-equal?
               (syntax->datum
                (read-all-syntax read-syntax (open-input-string "1 2 3")))
               (list 1 2 3)))
     (test-ok (check-equal?
               (syntax->datum
                (parameterize ([current-input-port
                                (open-input-string "1 2 3")])
                  (read-all-syntax)))
               (list 1 2 3))))))
