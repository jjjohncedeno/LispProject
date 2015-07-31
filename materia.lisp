(defun CrearMateria (id nombre horas numProyectos1 numProyectos2)
    (list :id id :nombre nombre :horas horas :numProyectos1 numProyectos1 :numPryectos2 numProyectos2)
)

(defun NuevaMateria(lista)
    (handler-case
        (progn
            (insertar
                (CrearMateria
                    (leerDato "Id Materia: ")
                    (leerDato "Nombre de Materia: ")
                    (or (parse-integer (leerDato "Clases en el semestre: ") :junk-allowed t) 0)
                    (or (parse-integer (leerDato "Proyectos en primer parcial: ") :junk-allowed t) 0)
                    (or (parse-integer (leerDato "Proyecto en segundo parcial: ") :junk-allowed t) 0)
                ) lista
            )
            (format t "~%Materia Ingresada con exito")
        )
        (error() (format t "~%Error.  se pudo ingresar"))
    )
)

(defun modificar(seleccion nombre horas proyectos)
    
)

(defun ImprimirMateria(lista)
    (setq cont 1)
    (dolist (materia lista)
        (format t "~%~d.-~a" cont (getf materia :nombre))
        (setq cont (+ cont 1))
    )
    (- cont 1)
)

(defun PrincipalMateria(lista)
    (setq op 0)
    (loop (if (/= op 0)
            (progn
                (run-shell-command "clear")
                (LetraMateria)
                (LetraMenuTarea)
                (setq op (read))
                (cond
                    ((= op 1)
                        (run-shell-command "clear")
                        (LetraMateria)
                        (LetraIngresar)
                        (NuevaMateria lista)
                        (guardarMateria "Archivos/materias.db" lista)
                    )
    
                    ((= op 2)
                        (run-shell-command "clear")
                        (LetraMateria)
                        (LetraModificar)
                        (setq val (ImprimirMateria lista))
                        (format t "~%Ingrese numero de materia a modificar: ")
                        (setq num (or(parse-integer (read) :junk-allowed t) 0))
                        (if (and (< num val) (> num 0))
                            (progn
                                (format t "~%Ingrese Nombre: ")
                                (setq nombre (read-line))
                                (format t "~%Ingrese horas de la materia: ")
                                (setq horas (or (parse-integer (read) :junk-allowed t)0))
                                (format t "~%Ingrese numeros de proyecto en el semestre: ")
                                (setq numProyec (or (parse-integer (read) :junk-allowed t) 0))

                                (guardarMateria "Archivos/materias.db")
                            )
                        )
                    )

                    ((= op 3)
                        (run-shell-command "clear")
                        (LetraMateria)
                        (LetraEliminar)
                        (format t "~%~%****Materias Registradas****~%")
                        (setq val (ImprimirMateria lista))
                        (format t "~%Ingrese numero de materia a Eliminar: ")
                        (setq num (or(parse-integer (read) :junk-allowed t) 0))
                        (if (and (< num val) (> num 0))
                            (progn
                                (guardarMateria "Archivos/materias.db")
                            )
                        )
                   )
                )
            )
            (return 'fin)
        )       
    )   
)

