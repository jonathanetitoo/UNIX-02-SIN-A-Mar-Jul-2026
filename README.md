# EVALUACIÓN PRÁCTICA — UNIX · Versión 2

**Proyecto:** `kepler` · **Usuario adicional (GPG):** `vega` · **Email:** `vega@kepler.lab` · **Duración:** 40 min

---

## INSTRUCCIONES GENERALES

### Recursos permitidos

- Terminal Linux (Codespaces), `man`, páginas de internet, herramientas de IA, slides de clase.
- **PROHIBIDO:** comunicación con compañeros, compartir pantalla o soluciones.

### Sistema de calificación

| Resultado | Símbolo | Puntaje |
|---|---|---|
| Respuesta correcta | ✅ | `+P` puntos |
| Intento incorrecto | ❌ | `-P/2` puntos |
| Sin respuesta / sin cambio | ⬜ | `0` puntos |

> El script detecta automáticamente si hubo un **intento fallido** comparando el estado actual contra el estado inicial roto. Si no tocas algo, no se descuenta.

### Flujo de trabajo obligatorio

Resuelve cada problema y haz **UN COMMIT por problema** (puedes usar la interfaz gráfica de tu editor o los comandos):

```bash
git add .
git commit -m "Fix problema 1: <descripción breve>"
```

**Git no está calificado**, pero es parte del buen workflow. Si nunca has hecho commit, mira el *Apéndice B* al final.

---

## PROBLEMAS A RESOLVER

> **Hay 10 fallos distribuidos en 8 problemas (13 sub-verificaciones, total 10 puntos).** El enunciado indica cuántos fallos hay en cada problema. Se penaliza el intento incorrecto con `-P/2`. Si no tocas algo, recibes `0`.

---

### Problema 1 — Estructura de directorios · (1.5 pts máx · 2 fallos)

Dentro de `kepler/` hay exactamente **2 errores** relacionados con directorios:

1. Hay un directorio con **nombre incorrecto**; el nombre correcto es `registros`. **Renómbralo** (no lo borres y crees uno nuevo: el contenido debe moverse con él).
2. Falta un directorio que debería existir: `plantillas`.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 1a. `registros` existe y `docs` no | **+0.75** | -0.25 | 0 |
| 1b. `plantillas` existe | **+0.75** | — | 0 |

```bash
git add .
git commit -m "Fix problema 1: estructura de directorios corregida"
```

---

### Problema 2 — Archivos mal ubicados y renombrados · (1 pt máx · 2 fallos)

Dentro de `kepler/` hay exactamente **2 errores** de nombre o ubicación de archivos:

1. Un archivo de texto con datos de telemetría está en la ubicación incorrecta; debería estar dentro de `registros/`. **Muévelo** (no lo copies).
2. Un archivo de configuración tiene **extensión incorrecta**; su nombre correcto es `ajustes.conf`.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 2a. `sensores.log` en `registros/` (movido, no copiado) | **+0.50** | -0.25 | 0 |
| 2b. `ajustes.conf` existe, `ajustes.old` no | **+0.50** | -0.25 | 0 |

```bash
git add .
git commit -m "Fix problema 2: archivos movidos y renombrados"
```

---

### Problema 3 — Permisos numéricos con `chmod` · (1 pt máx · 1 fallo)

El archivo `sensores.log` (ahora en `registros/`) tiene un fallo de permisos. Sus permisos actuales son demasiado permisivos.

Los permisos correctos son:

- **Dueño:** lectura y escritura
- **Grupo:** solo lectura
- **Otros:** ningún permiso

Aplica el permiso correcto usando **notación numérica (octal)**.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 3. `sensores.log` tiene exactamente permisos `600` | **+1.00** | -0.50 | 0 |

```bash
git add .
git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
```

> **Pista rápida:** `r=4`, `w=2`, `x=1`. El permiso se compone sumando por bloque `u g o`. Repasa el slide **1.5 Permisos en modo numérico**.

---

### Problema 4 — Permisos simbólicos con `chmod` · (1 pt máx · 2 fallos)

Hay **2 fallos** que deben corregirse usando **notación simbólica** (`u+x`, `o-w`, etc.):

1. `runner.sh` no tiene permiso de ejecución para su dueño. Añádelo.
2. `ajustes.conf` tiene permiso de escritura para `others`. Quítalo.

> ⚠️ Usa **solo notación simbólica**. No uses números para este problema.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 4a. `runner.sh` tiene bit `u+x` | **+0.50** | -0.25 | 0 |
| 4b. `ajustes.conf` no tiene bit `o+w` | **+0.50** | -0.25 | 0 |

```bash
git add .
git commit -m "Fix problema 4: permisos simbolicos corregidos"
```

---

### Problema 5 — Bit SUID · (1 pt máx · 1 fallo)

`runner.sh` debe ejecutarse siempre con los **privilegios del dueño del archivo**, independientemente de quién lo invoque. Hay 1 fallo de permisos especiales.

**Activa el bit SUID** en `runner.sh`. Verifica con `ls -l` que la posición de ejecución del dueño muestre `s`.

> 📘 **Recordatorio (no estaba en los slides):** El bit SUID (Set User ID) es un permiso especial que se activa con `chmod u+s archivo` (simbólico) o sumando `4000` al permiso octal (ej.: `chmod 4755`). Cuando un archivo tiene SUID, se ejecuta con los privilegios del **dueño**, no del que lo invoca. Ejemplo clásico: `/usr/bin/passwd` es SUID root para poder escribir en `/etc/shadow`.
>
> **Nota académica:** el SUID en scripts de shell tiene restricciones en Linux moderno, pero el ejercicio evalúa que sepas **aplicar el bit correctamente**.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 5. `runner.sh` tiene bit SUID activo | **+1.00** | -0.50 | 0 |

```bash
git add .
git commit -m "Fix problema 5: SUID activado en runner.sh"
```

---

### Problema 6 — Sticky bit · (1 pt máx · 1 fallo)

El directorio `/tmp/kepler_zone` es un espacio compartido entre usuarios. Tiene 1 fallo: le falta el **sticky bit**, lo que permite que cualquier usuario elimine archivos ajenos.

**Activa el sticky bit.** Verifica con `ls -ld /tmp/kepler_zone` que aparezca `t` al final de los permisos (ejemplo: `drwxrwxrwt`).

> 📘 **Recordatorio (no estaba en los slides):** El sticky bit (`chmod +t` o suma `1000` al octal) sobre un directorio **evita que los usuarios borren archivos que no son suyos**, aunque tengan permiso de escritura en el directorio. Es el mecanismo que protege `/tmp` en todos los Linux.
>
> Nota: `/tmp/kepler_zone` no vive en el repositorio git, pero el verificador lo comprueba.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 6. `/tmp/kepler_zone` tiene sticky bit | **+1.00** | -0.50 | 0 |

```bash
git add .
git commit -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
```

---

### Problema 7 — GPG: generación de llaves y cifrado · (1.5 pts máx)

**7a.** Genera un par de llaves GPG para:

- **Nombre real:** `vega`
- **Email:** `vega@kepler.lab`
- **Sin passphrase** (presiona Enter dos veces cuando te la pida, o usa el método batch del *Apéndice A*).

**7b.** Cifra `kepler/registros/sensores.log` usando esa llave pública. El archivo cifrado debe llamarse `sensores.log.gpg` en la **misma carpeta**.

> 💡 Usa `--encrypt --recipient vega@kepler.lab`, **no** `--symmetric`.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 7a. Llave `vega@kepler.lab` en el llavero | **+0.50** | — | 0 |
| 7b. `sensores.log.gpg` cifrado asimétricamente | **+1.00** | -0.50 | 0 |

```bash
git add .
git commit -m "Fix problema 7: llave GPG generada y sensores.log cifrado"
```

---

### Problema 8 — GPG: firmas digitales · (2 pts máx · 2 fallos detectables)

**8a.** Firma `ajustes.conf` con `--clearsign`. El archivo firmado debe llamarse `ajustes.conf.asc` y quedar en `kepler/`.

**8b.** **Detecta y corrige** la firma corrompida de `runner.sh`. El archivo `kepler/runner.sh.sig` existe pero su firma fue alterada intencionalmente. Verifica el fallo con:

```bash
gpg --verify kepler/runner.sh.sig kepler/runner.sh
# Debe mostrar: BAD signature
```

Luego **re-firma** `runner.sh` usando `--detach-sign`, **sobreescribiendo** el `.sig` corrupto. La nueva firma debe quedar como `kepler/runner.sh.sig`.

> 💡 Usa tu propia llave (la creada en el Problema 7) para ambas firmas.

| Sub-check | Correcto | Intento fallido | Sin respuesta |
|---|---|---|---|
| 8a. `ajustes.conf.asc` con firma clearsign válida | **+1.00** | -0.50 | 0 |
| 8b. `runner.sh.sig` con firma detached válida | **+1.00** | -0.50 | 0 |

> ⚠️ `runner.sh.sig` eliminado sin re-firmar también cuenta como intento fallido: `-0.50`.

```bash
git add .
git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
```

---

## Apéndice A — Generar llave GPG sin passphrase en modo batch

Si la interfaz interactiva de `gpg --full-generate-key` te está dando problemas, puedes generar la llave en modo batch:

```bash
cat > /tmp/mi_llave.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: vega
Name-Email: vega@kepler.lab
Expire-Date: 0
%commit
EOF

gpg --batch --generate-key /tmp/mi_llave.batch
```

Verifica que la llave se creó:

```bash
gpg --list-keys vega@kepler.lab
```

---

## Apéndice B — Cheatsheet de git (por si es tu primera vez)

```bash
# Ver qué archivos has cambiado
git status

# Añadir TODO lo cambiado al siguiente commit
git add .

# Hacer el commit con un mensaje
git commit -m "Fix problema N: descripción breve"

# Ver el historial de commits
git log --oneline

# Si escribiste mal el mensaje del último commit, corrígelo con:
git commit --amend -m "mensaje corregido"
```

En el editor gráfico (VS Code / Codespaces): panel **Source Control** (`Ctrl+Shift+G`) → escribes el mensaje arriba → `Ctrl+Enter` hace commit. `+` junto a cada archivo hace `git add`.

---

## Apéndice C — Cómo auto-calificarte

Cuando termines, ejecuta:

```bash
./calificar.sh kepler
```

El script te mostrará el puntaje de cada sub-check y el total. **Úsalo las veces que quieras**; no hay penalización por ejecutarlo.
