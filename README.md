Introducción a Bash Scripting
==========
Sistemas Operativos
------


###Objetivo
Familizarse con los conceptos basicos de programación en shell Bash. Para ello se ha de implementar dos funciones, drive_space() y home_space().

###Funcionamiento

drive_space() ha de mostrar el espacio ocupado en las particiones/discos duros del sistema. Y home_space() ha de mostrara el espacio ocupado por cada directorio personal, con la variación de que si el script es ejecutado por root, muestra el espacio de todos los usuarios, mientras que si no es root, sólo del usuario que lo ejecuta.

Para poder ver su funcionamiento, clona el repositorio [SSOO_P1], una vez clonado asegurate de que el archivo sysinfo_page tenga permisos de ejecución, y luego procede a:
          
```sh
	user@user:~/SSOO_P1$ ./sysinfo_page.sh > sysinfo.html
``` 

Y finalmente, abre en tu navegador, sysinfo.html.

[SSOO_P1]:https://github.com/alu0100700435/SSOO_P1.git