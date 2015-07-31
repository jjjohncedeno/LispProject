(defun insertar(dato base)
   (push dato base)
)

(defun leerDato (prompt)
    (format *query-io* "~a: " prompt)
    (force-output *query-io*)
    (read-line *query-io*)
)

(defun guardar(fichero base)
    (with-open-file (out fichero :direction :output :if-does-not-exist :create :if-exists :supersede )
        (with-standard-io-syntax (print base (read in)))
    
)

(defun cargar(fichero base)
    (handler-case 
        (progn
            (with-open-file(in fichero)
                (with-standard-io-syntax
                    (setf base (read in))
                )
            )
        )
        (error ())
    )
)

(defun select (selector-fn base)
    (remove-if-not selector-fn base)
)

(defun delete-rows (selector-fn base)
    (setf base (remove-if selector-fn base))
)

(defun modificar(funcion lista lNombres lValores)
    (setq num (length 'lista))
    (setq i 0)
    (setf lista 
        (mapcar
            #'(lambda (row)
                (when (funcall funcion row)
                    (loop (if (< i num)
                        (progn
                            (setf (getf row (nth i lNombres)) (nth i lValores))
                            (setq i (+ i 1))
                        )
                    )
          
                )
                row
            )
            lista
        )
    )
)

(defun where(lNombres lValores)


)
