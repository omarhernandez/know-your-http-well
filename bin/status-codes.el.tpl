;; This file was automatically generated by
;; https://github.com/andreineculau/know-your-http-well
;; based on the template of Ruslan Spivak
;;
;;; status-code.el --- explains the meaning of an HTTP status code
;;
;; Copyright (C) 2011  Ruslan Spivak
;;
;; Author: Ruslan Spivak <ruslan.spivak@gmail.com>
;; URL: http://github.com/rspivak/httpcode.el
;; Version: 0.1
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;;; Commentary:
;;
;; Explain the meaning of an HTTP status code. Copy httpcode.el to your
;; load-path and add to your .emacs:
;;
;;   (require 'status-code)
;;
;; Then run it with M-x http-status-code
;;
;;; Code goes here:

(defconst http-status-codes
  '({{ HTTP_CODES }}))

;;;###autoload
(defun http-status-code (status-code)
  "Display the meaning of an HTTP status code"
  (interactive "nEnter HTTP status-code: ")
  (let ((found (assoc status-code http-codes)))
    (if found
        (let ((description (car (cdr found))))
          (message
           "Status code: %d\nReason phrase: %s\nExplanation: %s"
           status-code (car description) (car (cdr description))))
      (message "No description found for code: %d" status-code))
    ))

(provide 'status-code)

;;; status-code.el ends here
