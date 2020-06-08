(require-library "GiL")
(defvar *rhythm-box-sources-dir* nil)
(setf *rhythm-box-sources-dir* (make-pathname :directory (append (pathname-directory *load-pathname*) '("sources"))))

(compile&load (make-pathname :directory (pathname-directory *rhythm-box-sources-dir*) :name "rhythm-utils" :type "lisp"))
(compile&load (make-pathname :directory (pathname-directory *rhythm-box-sources-dir*) :name "rhythm-csp" :type "lisp"))
(compile&load (make-pathname :directory (pathname-directory *rhythm-box-sources-dir*) :name "rhythm-csts" :type "lisp"))

(defvar *rhythm-box-pkg* (omng-make-new-package 'Rhythm-Box))

(AddLispFun2Pack '(
    rhythm-box
    search-next
    cst-rel-pulse
    cst-keep-pulses
    cst-at-most-pulses
    cst-at-most-nb-notes
    cst-keep-nb-pulses
    cst-keep-note-drts
    cst-at-least-notes
    cst-insert-pattern)
*rhythm-box-pkg*)

(AddPackage2Pack *rhythm-box-pkg* *om-package-tree*)

(print "GeLisp Loaded")