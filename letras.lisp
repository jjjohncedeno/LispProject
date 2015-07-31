(defun LetraMateria()
    (format t "~%~% __  __           _                   _
|  \\/  |   __ _  | |_    ___   _ __  (_)   __ _   ___ 
| |\\/| |  / _` | | __|  / _ \\ | '__| | |  / _` | / __|
| |  | | | (_| | | |_  |  __/ | |    | | | (_| | \\__ \\
|_|  |_|  \\__,_|  \\__|  \\___| |_|    |_|  \\__,_| |___/")
)

(defun LetraAsitencia()
    (format t "~%~%   _         _       _                       _        
  /_\\   ___ (_) ___ | |_   ___  _ __    ___ (_)  __ _ 
 //_\\\\ / __|| |/ __|| __| / _ \\| '_ \\  / __|| | / _` |
/  _  \\\__ \| |\\__ \\| |_ |  __/| | | || (__ | || (_| |
\\_/ \\_/|___/|_||___/ \\__| \\___||_| |_| \\___||_| \\__,_|~%~%")
)

(defun LetraTareas()
    (format t "~%~%/__   \\  __ _  _ __   ___   __ _  ___ 
  / /\\/ / _` || '__| / _ \\ / _` |/ __|
 / /   | (_| || |   |  __/| (_| |\\__ \\
 \/     \\__,_||_|    \\___| \\__,_||___/
")
)

(defun LetraProyecto()
    (format t "~%~%   ___                                  _               
  / _ \\ _ __   ___   _   _   ___   ___ | |_   ___   ___ 
 / /_)/| '__| / _ \\ | | | | / _ \\ / __|| __| / _ \\ / __|
/ ___/ | |   | (_) || |_| ||  __/| (__ | |_ | (_) |\\__ \\
\\/     |_|    \\___/  \\__, | \\___| \\___| \\__| \\___/ |___/
                     |___/                              
")
)

(defun LetraExamen()
    (format t "~%~%   __                                                 
  /__\\__  __  __ _  _ __ ___    ___  _ __    ___  ___ 
 /_\\  \\ \\/ / / _` || '_ ` _ \\  / _ \\| '_ \\  / _ \\/ __|
//__   >  < | (_| || | | | | ||  __/| | | ||  __/\\__ \\
\\__/  /_/\\_\\ \\__,_||_| |_| |_| \\___||_| |_| \\___||___/~%")
)
(defun LetraIngresar()
    (format t "~%~% ____  _  _   ___  ____  ____  ___    __    ____   
(_  _)( \\( ) / __)(  _ \\( ___)/ __)  /__\\  (  _ \\()
 _)(_  )  ( ( (_-. )   / )__) \__ \\ /(__)\\  )   /  
(____)(_)\\_) \\___/(_)\\_)(____)(___/(__)(__)(_)\\_)()
~%")
)

(defun LetraModificar()
    (format t "~%~% __  __  _____  ____   ____  ____  ____   ___    __    ____   
(  \\/  )(  _  )(  _ \\ (_  _)( ___)(_  _) / __)  /__\\  (  _ \\()
 )    (  )(_)(  )(_) ) _)(_  )__)  _)(_ ( (__  /(__)\\  )   /  
(_/\/\_)(_____)(____/ (____)(__)  (____) \\___)(__)(__)(_)\\_)()
~%~%")
)

(defun LetraEliminar()
    (format t "~%~% ____  __    ____  __  __  ____  _  _    __    ____ 
( ___)(  )  (_  _)(  \\/  )(_  _)( \\( )  /__\\  (  _ \\()
 )__)  )(__  _)(_  )    (  _)(_  )  (  /(__)\\  )   /  
(____)(____)(____)(_/\\/\\_)(____)(_)\\_)(__)(__)(_)\\_)()~%~%")
)

(defun LetraMenuMateria()
    (format t "~%~%◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘
◘◘◘          Configuracion              ◘◘◘
◘◘◘ (1) INGRESO DE MATERIA              ◘◘◘
◘◘◘ (2) EDITAR MATERIA                  ◘◘◘
◘◘◘ (3) ELIMINAR MATERIA                ◘◘◘
◘◘◘ (0) REGRESAR                        ◘◘◘
◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘")
)

(defun LetraMenuConfig(valor)
    (format t "~%~%◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘
◘◘◘          Configuracion              ◘◘◘
◘◘◘ (1) INGRESO DE ~a           ◘◘◘
◘◘◘ (2) EDITAR ~a               ◘◘◘
◘◘◘ (0) REGRESAR                        ◘◘◘
◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘" valor valor)
)
