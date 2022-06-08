# Respuestas a la preguntas sobre la implementacion del ejercicio#3:

## Aporte de los mensajes de DD:

**En un double dispatch (DD), ¿qué información aporta cada uno de los dos llamados?**

Haciendo uso de una especie de esquema:

    unaInstanciaDeClase unMensaje: otraInstanciaDeClase (Mensaje sin double diapatch).

    otraIntanciaDeClase unMensaje: unaInstanciaDeClase (Mensaje con double dispatch).

El double dispatch involucra la colaboración de dos objetos polimorficamente iguales, en este caso: unaInstanciaDeClase y otraInstanciaDeClase. Al reimpleentar el envío de  un mensaje (entre objetos polimorficamente iguales) como se hizo en el esquema, se puede extraer la siguiente información:

1)unaInstanciaDeClase es el receptor el mensaje "unMensaje", y dependiendo de la clase a la que instancie, recibe el mensaje correspondiente de dicha instancia de clase. Es decir:

Si se tienen dos clases, claseA y claseB, que puedan instanciar objetos polimorficamente iguales, los mensajes de cada instancia también serán polimorficamente iguales. Gracias a esto la colaboración "otraInstanciaDeClase mensaje: " puede recibir el mensaje de su instancia correspondiente, sin necesidad de hacer usos de ifs.

2)otraInstanciaDeClase es el colaborador externo del mensaje "unMensaje". Erá quien orignalmente recibía el mensaje, bajo esta nueva implementación, debería ejecutar el mismo mensaje, con la particularidad de que se puede lograr lo comentado en (1).


## Lógica de instanciado:

**Con lo que vieron y saben hasta ahora, ¿donde les parece mejor tener la lógica de cómo instanciar un objeto? ¿por qué? ¿Y si se crea ese objeto desde diferentes lugares y de diferentes formas? ¿cómo lo resuelven?**

La mejor forma de tener la lógica de instanciar a un objeto, es en su subclase o clase correspondiente. El restringirse a esto favorece el encapsulamiento y modularidad de un programa (una vez conocida la lógica de instanciación de un objeto, está siempre será la misma, por lo que no habría necesidad de tener su lógica en otro sitio), favorece también la lógica del programa en el caso de trabajar con objetos polimorficamente iguales (cada uno tiene su propia lógica de instanciación).

Un muy buen méotdo de resolver el problema de la creación de un objeto desde lugares diferentes y de diferentes forma, es través la creación de una jerarquía de clases. Cada objeto es polimorfico al otro, por lo que es posible organizar toda su implementación en una jerarquía similar a la hecha en el ejercicio 3. De esta forma se puede agrupar la lógica de intanciación en un solo lugar.

## Nombres de las categorías de métodos:

**Con lo que vieron y trabajaron hasta ahora, ¿qué criterio están usando para categorizar métodos?**

Los métodos se categrizan segun su similutud en el "que". Por ejemplo, si existen un conjunto de métodos que se encargan de realizar operaciones entre números, una buena categoría para estos puede ser "Operaciones aritméticas". La idea se centra en determinar el "que" en común entre un grupo de métodos, y de esta forma determinar una categoría para estos.

## Subclass Responsibility

**Si todas las subclases saben responder un mismo mensaje, ¿por qué ponemos ese mensaje sólo con un “self subclassResponsibility” en la superclase? ¿para qué sirve?**

A pesar de que las todas las clases saben responder el mismo mensaje, la implementación de cada mensaje depende de la subclase. El usar self subclassResponsability delega la responsabilidad de implementar el mismo mensaje en cada subclase. Su función es la de aportar un mensaje de error en caso de que uno de los mensajes de las subclases tengan algun problema, ya que hacendo uso del lookUp, se hará referencia al mensaje correspondiente de la suberclase, quien indicará que la implementación era responsablidad de la subclase.


## No rompas

**¿Por qué está mal/qué problemas trae romper encapsulamiento?**

El romper con el encapsulamiento de un programa genera problemas como quitarle legibilidad y sentido al mismo. Esto ultimo se hace mucho más evidente al momento en que los programas se hacen más grandes y requieren de nuevas funcionalidades, ya que, al hacer esto y romper con el encapsulamiento, se hace díficil distinguir de donde proviene los problemas, además de quitarñe legibilidad y sentido al programa.