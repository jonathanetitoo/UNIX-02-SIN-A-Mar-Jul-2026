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
   37  chmod 640 kepler/registros/sensores.log
38  git add .
39  git commit -m 
40  touch kepler/runner.sh
41  chmod u+x kepler/runner.sh
42  chmod o-w kepler/ajustes.conf
43  git add .
44  git commit -m 
45  chmod u+s kepler/runner.sh
46  mkdir -p /tmp/kepler_zone
47  chmod 1777 /tmp/kepler_zone
48  ls -l kepler/runner.sh
49  ls -ld /tmp/kepler_zone
50  gpg --batch --generate-key /tmp/mi_llave.batch
   51  gpg --encrypt --recipient vega@kepler.lab kepler/registros/sensores.log
   52  git add .
   53  git commit -m "Fix problema 7: llave GPG generada y sensores.log cifrado"
   54  # 8a. Crear firma clearsign
   55  gpg --output kepler/ajustes.conf.asc --clearsign kepler/ajustes.conf
   56  # 8b. Re-firmar el runner sobrescribiendo la corrupta
   57  gpg --yes --output kepler/runner.sh.sig --detach-sign kepler/runner.sh
   58  git add .
   59  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   60  chmod 1777 /tmp/kepler_zone
   61  ./calificar.sh kepler
   62  ../calificar.sh kepler
   63  cd ..
   64  ls
   65  ./nombre_del_script.sh kepler
   66  find /workspaces -name "calificar.sh"
   67  ./filesystem_script.sh evaluation/kepler
   68  ./filesystem_script.sh kepler
   69  chmod +x filesystem_script.sh gnupg_script.sh
   70  ./filesystem_script.sh evaluation/kepler
   71  ./gnupg_script.sh evaluation/kepler
   72  cd evaluation
   73  ../filesystem_script.sh kepler
   74  ../gnupg_script.sh kepler
   75  ls -lR kepler && ls -ld /tmp/kepler_zone
   76  git push origin eval_p2_1_g2
   77  history