(defun CrearProyecto(id numero nota parcial)
    (list :id id :numero numero :nota nota :parcial parcial)
)

(defun PrincipalProyecto(lista)
    (setq opp 4)
    (loop (if (/= opp 0)
            (progn
                (run-shell-command "clear")
                (LetraProyecto)
                (LetraMenuConfig "PROYECTO  ")
                (format t "~%Ingrese opcion: ")
                (setq opp (read))
                (cond
                    ((= opp 1)
                        (run-shell-command "clear")
                        (LetraProyecto)
                        (format t "~%~%*****Anadir Proyecto*****~%")
                        (addProyecto id)
                        (guardarProyecto "Archivos/proyectos.db")
                    )
    
                    ((= opp 2)
                        (run-shell-command "clear")
                        (LetraProyecto)
                        (format t "~%~%****Proyectos Registradas****~%")
                        (imprProyecto id)
                        (format t "~%Ingrese numero de Proyecto a modificar: ")
                        (setq nume (read-line))
                        (format t "~%Nota: ")      
                        (setq nota (read-line)) 

                        (updateProyecto (whereProyecto :IdMateria id :numProyecto nume) nota)
                        (guardarProyecto "Archivos/proyectos.db")            
                    )
                )
            )
            (return 'fin)
        )       
    )   
)
