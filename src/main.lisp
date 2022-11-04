(eval-when (:compile-toplevel :load-toplevel :execute)
  (ql:quickload '(:with-user-abort) :silent t))

(defpackage #:backup
  (:use :cl))
(in-package #:backup)

(defvar *program-name* "backup"
  "Program name.")

(defvar *backup-location* ""
  "")

(defvar *user-directory* ""
  "")

(defvar *backup-name* ""
  "")

(defvar *generate-slackpkg-template* t
  "")

(defvar *generate-sbopkg-template* t
  "")

(defvar *items* '()
  "")

(defvar *items-size* 0
  "")

(defvar *fixed-items* (list "/etc"
							"/var/www"
							"/var/mail"
							"/usr/local/src")
  "")

(defvar *config-file-name* "$USR_DIR/.backup.conf"
  "")

(defun show-usage ()
  "Display the program usage to standard error output."
  (format *error-output* "~a: usage: ~a [-n|-c|-h|--compression]"
		  *program-name* *program-name*))

(defun load-config ()
  ""
  nil)

(defun send-notification (@urgency @message)
  "
@URGENCY .
@MESSAGE ."
  (when (not (symbolp @urgency))
	(error "@URGENCY must be a symbol."))
  (when (not (stringp @message))
	(error "@MESSAGE must be a string."))
  (let (($status-message))
	(setq $status-message (string-downcase (symbol-name @urgency)))
	(uiop:run-program (format nil "notify-send --urgency=~a \"~a\""
							  $status-message
							  @message)
					  :output nil
					  :error-output nil)))

(defun make-backup ()
  "")

(defun toplevel ()
  (sb-ext:disable-debugger)
  (sb-ext:exit :code 0))
