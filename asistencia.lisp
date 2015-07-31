(defun CrearAsistencia(id numero asistio parcial)
    (list :id id :numero numero :asistio asistio :parcial parcial)
)

(defun PrincipalAsistencia(lista)

    (setq op 4)
    (loop (if (/= op 0)
            (progn
                (run-shell-command "clear")
                (LetraAsistencia)
                (LetraMenuConfig "ASISTENCIA")
                (setq op (read))
                (cond
                    ((= op 1)
                        (run-shell-command "clear")
                        (LetraAsistencia)
                        (format t "~%~%*****Anadir Asistencia*****~%")
                        (addAsistencia id)
                        (guardarAsistencia "Archivos/asistencia.db" lista)
                    )
    
                    ((= op 2)
                        (run-shell-command "clear")
                        (LetraAsistencia)
                        (format t "~%~%****Asistencias Registradas****~%")
                        (imprAsistencia id)
                        (format t "~%Ingrese numero de clase a modificar: ")
                        (setq numc (read-line))
                        
                        (setq asistio 
                            (if (y-or-n-p "asistio:")
                                1
                                0
                            )
                        )
                        ;(selectAsistencia (whereAsistencia :IdMateria id :numClase numc))
                        (updateAsistencia (whereAsistencia :IdMateria id :numClase numc) :asistio asistio)
                        
                        (guardarAsistencia "Archivos/asistencia.db" lista)                     
                    )

                )
            )
            (return 'fin)
        )       
)
