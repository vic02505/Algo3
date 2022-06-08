# Preguntas a responder sobre la elaboración del ejercicio:

### Los tests 01, 02 y 03 demuestran la funcionalidad de cómo se incrementa la cantidad de huevos de avispas a medida que los van dejando. Cuando los implementaste, ¿esos tests pasaron (los tres) de una? ¿podrías haber implementado esta funcionalidad de a partes, haciendo que pase el 01, luego el 01 y el 02 y por último el 01, 02 y 03? ¿se te ocurre cómo? Y si lograste hacerlo, ¿qué pensas de implementar esa funcionalidad de esa forma?

    -No se probaron los 3 test de una sola vez, se fueron probando uno a uno, y se avanzaba a otro a medida que iban funcioando los anteriores. Por la forma en que se implementó el código no hubiese sido posbile que pasaran las 3 pruebas la vez, ya que se hizo por partes, y cada parte necesitaba de la otra para funcionar correctamente.
    
    -Implementar el código de a partes e ir haciendo pruebas puntuales, es mucho más efectivo que implementar el código completo de un programa y testearlo, es más efectivo porque porque permite construir un programa en etapas, asegurandose de que si se pasa a otra, es porque la anterior parte del programa funcionaba, hace más fácil la busqueda de errores, y es tambíen una muy buena práctica al momemento de programar (programación basada en pruebas).

### ¿les quedó código repetido? ¿dónde? ¿Se animan a adivinar qué cosa del dominio les faltó representar (y por eso tienen código repetido)? Responsabilidad de dejar un huevo consumiendo otro insecto ¿Quién les quedó, en su modelo, que es el responsable de ver si hay suficientes polillas u orugas y entonces dejar un huevo? ¿el insecto (Polly, Oriana, etc) o el hábitat? ¿por qué? ¿por qué tendría sentido que fuera de la otra forma? ¿con cuál nos quedamos?

    -Quedó código repetido al momento de implementar el mensaje intentarReproducirse de Oriana y Ornella.

    -Falto tomar en cuenta el que las avispas Oriana y Ornella tiene un comportamiento muy similar, y que por lo tanto la parte de su comportamiento que es el mismo puede ser modularizado en uno solo.

    -Los responsables de ver si hay suficiente alimento para poner un huevo, son las polillas al intentar colocar un huevo; Polly es quien debe ver si hay polillas para poner huevo, Oriana y Ornella deben asegurarse que hay orugas, etc. No tendría sentido que esto fuese de otra forma, ya que rompe con la dimensión del problema; Las avispas son quienes ponen huevos en el Habitat, y son estas las que deben asegurarse de que hay alimento suficiente em el mismo. El habitat no es más que el sitio donde se poenen los huevos.

### Con lo que vimos en la clase del Jueves (en la parte teórica, prototipos vs clases) ¿cómo sacarían este código? Sobre la implementación ¿cómo resolvieron guardar los huevos? ¿Usaron colecciones? ¿Diccionarios? ¿Uno, varios? ¿con qué indexaban? Pero la pregunta más importante: ¿es lo más sencillo que hacía falta? ¿o se podía hacer menos y todo andaba?

    -El como guardar los huevos se resolvió haciendo uso de colaboradores internos, para mantener en el tiempo la cantidad de huevos.
    -La implementación se hizo sin hacer uso de diccionarios y colecciones. No se hizo uso de diccionarios ni de colecciones, por lo que haciendo uso de menos "estructuras de datos" se logró representar el problemas. 
