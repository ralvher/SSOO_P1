#!/bin/bash

TITLE="Practica 1"



drive_space(){
  echo '<p> <strong> Espacio ocupado en las particiones/discos duros del sistema: </strong></p>'
  echo '<pre>'
    df "/dev"
  echo '</pre>'
}

home_space(){

  

	if [ "$USER" == "root" ]; then

    echo '<p><strong> El espacio total de los usuarios es:</strong></p>'
    echo '<pre>'
          du -s /home/* | sort -n -r 
    echo '</pre>'
	else    
		echo '<p><strong> El espacio total de <i style="color:green">' $USER '</i> es: </strong></p>'
		echo '<pre>'
		  du -c /home/$USER | tail -n1 | cut -f1
		echo '</pre>'
	fi
}



cat << _EOF_
<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistemas Operativos::Practica 1</title>
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.css" rel="stylesheet">
    <link href="style3.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">
    
  </head>

  <body>

    <div class="jumbotron">
        
        <h2 class="sub" id="ruby-y-git-en-linux-">$TITLE</h2>
        <p class="s"><i>Sistemas Operativos</i></p>
        
     </div>
    
    <div class="container main">
      <div class="row">

        <div class="col-xs-12 col-sm-6 col-lg-6 col-sm-offset-3 col-lg-offset-3">
          $(drive_space)
        </div>

        <div class="col-xs-12 col-sm-6 col-lg-6 col-sm-offset-3 col-lg-offset-3">
          $(home_space)
        </div>

      </div>
    </div>
    <div class="footer">
      <div class="container">
        <p class="text-muted">
          <a href="https://alu0100700435.github.io/" target="_blank">alu0100700435</a> | Copyright 2011-2014. All rights reserved.
        </p>
      </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    

  </body>
</html>

_EOF_
