;;;; project-maker.lisp
;;;;
;;;; Copyright (c) 2018 George P. Taylor IX

(in-package #:project-maker)


;; See https://xach.livejournal.com/278047.html
;; (load "~/quicklisp/setup.lisp") ; Normally already loaded by .emacs.d/init.el


;; http://quickdocs.org/inferior-shell/
;; git remote add origin (format nil https://github.com/~a/~a.git" github-user-account-name new-repo-name) 
;; git push -u origin master
; 404-214-6900 beck
;; Set up project

(defparameter *github-user-name* "gptix")
(defparameter *project-base-directory* "~/src/lisp/")

(ql:quickload "quickproject")

(setf quickproject:*author* "George P. Taylor IX") 

(setf quickproject:*include-copyright* t)

(setf quickproject:*license* "BSD3")

(defun new-lisp-project (project-name)
  (progn
    ;; makes local project skeleton
    (quickproject:make-project (format nil "~a~a/" *project-base-directory* project-name))))
#|
    ;; makes repo on github for project
;;    (drakma:http-request (format nil "https://~a/~a/" *github-account-user-name* *new-reo-name*
				 #| figure out syntax to create POST request specifying user, providing token, and specifyong new repo name |#))

    ;; runs git commands to initiallize local copy ofd project
;;    (inferior-shell:run (progn ("cd" new-project-base-dir)
			       ("git" "init" #| decide parameters to pass to git init |#)
			       ("git" "add" ".")
			       ("git" "commit" "-m" "\"Initial Commit.\"")

			       ;; pushes updates to local project to github
			       ("git" #| figure out syntax of pushing to a repo of a specific user |#)))
    (report-status-of-git-push))))
|#


;;; "project-maker" goes here. Hacks and glory await!

