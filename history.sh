    1  ls
    2  git checkout -b eval_p2_1_v2 upstream/eval_p2_1_v2
    3  git fetch upstream
    4  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    5  git push -u origin eval_p2_1_g2
    6  ls
    7  ls evaluation
    8  cd evaluation
    9  ls
   10  mv kepler/docs kepler/registros
   11  mkdir kepler/plantillas
   12  git add .
   13  git commit -m "Fix problema 1: estructura de directorios corregida"
   14  mv kepler/sensores.log kepler/registros/
   15  mv kepler/ajustes.old kepler/ajustes.conf
   16  git add .
   17  git commit -m "Fix problema 2: archivos movidos y renombrados"
   18  chmod 600 kepler/registros/sensores.log
   19  git add .
   20  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   21  chmod 600 kepler/registros/sensores.log
   22  git add .
   23  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   24  chmod 640 kepler/registros/sensores.log
   25  chmod 600 kepler/registros/sensores.log
   26  git add .
   27  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   28  chmod 640 kepler/registros/sensores.log
   29  ls -l kepler/registros/sensores.log
   30  ls -l
   31  ls -l kepler/registros/sensores.log
   32  touch kepler/runner.sh
   33  chmod u+x kepler/runner.sh
   34  chmod o-w kepler/ajustes.conf
   35  git add .
   36  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   37  history