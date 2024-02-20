# Actividad1.3.1LAMP
### Primero, debemos verificar la versión de Apache instalada en la máquina. Con el comando apache2 -v.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/1.png)

### En el caso de que no este instalado lo instalamos de esta manera.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/unnamed.png)

### La siguiente tarea en nuestro proceso de instalación de LAMP será la configuración de PHP. Para llevar a cabo esta acción, ejecutaremos el siguiente comando: apt install php libapache2-mod-php php-mysql -y.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/3.png)

### Comprobamos 
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/4.png)

### Ahora hay que modificar el archivo que se encuentra en /etc/apache2/sites-avalible llamado 000-default.conf.

![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/5.png)

![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/6.png)

### Despues creamos el documento info.php en /var/www/html
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/7.png)

### Reiniciamos el servicio por si acaso.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/8.png)

### Y comprobamos entrando como localhost desde el navegador y apareceria tal que asi.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/9.png)
### Finalmente, la última tarea será la instalación de nuestra base de datos. En este caso, MariaDB Para llevar a cabo esta instalación, ejecutaremos la siguiente instrucción: apt install -y mariadb-server mariadb-client.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/10.png)
### Entramos como root a la consola de MariaDB.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/11.png)
### Y creamos un usuario.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/12.png)
### Solo quedaria la instalacion de phpmyadmin y posteriormente su configuracion.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/13.png)
### Configuracion.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/14.png)

![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/15.png)

![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/16.png)
### Y asi nos apareceria una vez configurado todo nos saldria un menu de inicio donde iniciaremos.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/17.png)
### Para llegar al gestor de bases de datos, se ve asi.
![](https://github.com/LucasCres/Actividad1.3.1LAMP/blob/main/img/18.png)



