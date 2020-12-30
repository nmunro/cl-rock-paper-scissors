(defpackage rock-paper-scissors
  (:use :cl))
(in-package :rock-paper-scissors)

(defun get-player-choice (options)
  (format t "Please enter one of -> ~{~A~^, ~}: " options)
  (force-output)
  (or (find (read-line) options :test #'string-equal) (get-player-choice options)))

(defun game ()
  (let* ((options       '("rock" "paper" "scissors"))
         (cpu-choice    (nth (random (length options) (make-random-state t)) options))
         (player-choice (get-player-choice options)))

    (cond
      ((string-equal cpu-choice player-choice)
       (format nil "You entered ~A, CPU entered ~A. It's a draw!" player-choice cpu-choice))

      ((and (string-equal player-choice "rock") (string-equal cpu-choice "scissors"))
       (format nil "You entered ~A, CPU entered ~A. You win!" player-choice cpu-choice))

      ((and (string-equal player-choice "paper") (string-equal cpu-choice "rock"))
       (format nil "You entered ~A, CPU entered ~A. You win!" player-choice cpu-choice))

      ((and (string-equal player-choice "scissors") (string-equal cpu-choice "paper"))
       (format nil "You entered ~A, CPU entered ~A. You win!" player-choice cpu-choice))

      (t
       (format nil "You entered ~A, CPU entered ~A. You loose!" player-choice cpu-choice)))))

(defun game ()
  (let* ((options       '("rock" "paper" "scissors"))
         (cpu-choice    (nth (random (length options) (make-random-state t)) options))
         (player-choice (get-player-choice options)))

    `(,options ,cpu-choice ,player-choice)))

(game)
