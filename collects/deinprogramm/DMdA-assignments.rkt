#lang deinprogramm/DMdA

(require syntax/docprovide "DMdA-deflam.rkt")
(provide #%app #%top (rename-out (DMdA-module-begin #%module-begin)) #%datum #%top-interaction require lib planet
         let let* letrec lambda define
	 cond if else begin and or set!
         define-record-procedures define-record-procedures-2 
	 define-record-procedures-parametric define-record-procedures-parametric-2
         .. ... .... ..... ......
	 check-expect check-within check-error check-member-of check-range
	 check-property for-all ==> expect expect-within expect-member-of expect-range
	 signature contract : define-contract -> mixed one-of predicate combined list-of
	 number real rational integer natural boolean true false string empty-list unspecific any property)
(provide cons)
(provide-and-document
 procedures
 (all-from-except assignments: deinprogramm/DMdA procedures
		  quote
		  symbol? string->symbol symbol->string))

