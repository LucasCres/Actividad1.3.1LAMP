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




