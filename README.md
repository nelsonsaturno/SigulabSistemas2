#NUEVAS REGLAS
========
Como todos saben, los profesores solicitaron un sistema unico en el cual todos deben estar integrados. Para mantener cierto orden en las cosas trabajaremos de la siguiente manera:

1) Consulten el archivo database.yml en donde encontraran los parametros que deben tener las bases de datos sobre psql: username, password del username y database name (development y test por lo menos).

2) Cada equipo tendra un branch en donde haran sus push. Mi recomendacion personal, trabajen en repositorios locales y luego hagan push al branch correspondiente. Para hacer push al branch correspondiente basta con hacer "git push origin <branch>" donde <branch> es el nombre del branch del equipo (compras|administracion|inventario).

3) SOLO los lideres de cada equipo deben hacer push a master, para esto seria bueno (por no decir necesario) que estuviesen en contacto a la hora de realizar el push y los merges correspondientes. Esto para evitar problemas de compatibilidad y cuestiones de que "el otro equipo me borro tal cosa".

4) En este repositorio esta creado el modelo user, con su correspondiente devise. NO hace falta que lo modifiquen y en caso de tener que hacerlo primero notifiquenme y avisenle a los demas equipos luego de haber hablado conmigo.

5) Debido a que todos los equipos tienen detalles que arreglar, utilicen este repositorio para tener una base sobre el cual hacer el incremento. Los detalles que vi en la correccion:
	- Lo recomendable es tener controladores unificados en caso de que se trate de un mismo modelo o funciones que puedan realizarse sobre el mismo controlador. (compras)
	- La programacion del sistema debe realizarse en ingles, aun cuando lo que se le muestre al usuario debe ser en español (todos, principalmente inventario)
	- El no investigar sobre las gemas que tiene rails puede traer problemas como tener dos modelos conectados a devise, con lo cual en algun momento pueden haber problemas de autenticacion. Para roles pueden y seria lo ideal usar CanCan como gema (administracion)

6) Como nota informativa: todos deben tener conocimiento del codigo y de los documentos. El minimo necesario para poder defender el codigo en nuestro caso. En uno de los grupos note total desconocimiento del codigo por los integrantes del mismo y, si bien siempre se ha de repartir el trabajo, es importante que haya cierto contacto entre quienes documentan y quienes desarrollan.

7) Cualquier decision "pesada" que tomen los lideres de grupo, por favor comuniquenmela para estar al tanto de todo.

8) El no asistir a las prepas y no consultar con mi persona sobre el desarrollo del sistema en caso de tener dudas, sera tomado en cuenta sobre la correccion de codigo en caso de existir errores. Esto lo digo porque hay quienes confian en su nivel como programadores (que me parece muy bien) pero bajo la perspectiva de que tenemos que trabajar como grupo es necesario que haya comunicacion entre todos. Los 3 grupos han de comunicarse y todos pueden realizar consultas conmigo. No se tiren de cabeza a echar codigo de una sin antes pensar e investigar un poco de lo que haran.

9) En cuanto a la base de datos. Luego les dire sobre que servidor remoto han de poder presentar sus sistemas la proxima vez. Por ahora, realicen de nuevo los scaffold tomando en cuenta que ahora deben trabajar en conjunto, agreguen sus assets y sus funciones sobre este repo. Dado a que estan unificando y migrando a este proyecto, ahora mas que nunca escribanme si tienen alguna duda o problema.

========
Jose Delgado.
[va sin acentos]