(defpackage rock-paper-scissors
  (:use :cl))
(in-package :rock-paper-scissors)

(defun get-player-choice (options)
  (format t "Please enter one of -> ~{~A~^, ~}: " options)
  (force-output)

  (let ((choice (string-downcase (read-line))))
    (if (member choice options :test #'string=)
        choice
        (get-player-choice options))))

(defun game ()
  (let* ((options       '("rock" "paper" "scissors"))
         (cpu-choice    (nth (random (length options) (make-random-state t)) options))
         (player-choice (get-player-choice options)))

    (cond
      ((string= cpu-choice player-choice)
       (format nil "You entered ~A, CPU entered ~A. It's a draw!" player-choice cpu-choice))

      ((and (string= player-choice "rock") (string= cpu-choice "scissors"))
       (format nil "You entered ~A, CPU entered ~A. You win!" player-choice cpu-choice))

      ((and (string= player-choice "paper") (string= cpu-choice "rock"))
       (format nil "You entered ~A, CPU entered ~A. You win!" player-choice cpu-choice))

      ((and (string= player-choice "scissors") (string= cpu-choice "paper"))
       (format nil "You entered ~A, CPU entered ~A. You win!" player-choice cpu-choice))

      (t
       (format nil "You entered ~A, CPU entered ~A. You loose!" player-choice cpu-choice)))))

(game)
