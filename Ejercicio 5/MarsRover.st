!classDefinition: #MarsRoverTest category: 'MarsRover'!
TestCase subclass: #MarsRoverTest
	instanceVariableNames: 'marsRover'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverTest methodsFor: 'Inicialización' stamp: 'vf 5/29/2022 11:50:54'!
setUp

	marsRover := MarsRover new.
	! !


!MarsRoverTest methodsFor: 'Tests' stamp: 'vf 5/29/2022 11:50:58'!
test01CuandoSeCreaMarsRoverComienzaEnElOrigen

	self assert: (marsRover posicionActual = (0@0)).! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'vf 5/29/2022 11:51:01'!
test02CuandoSeCreaMarsRoverComienzaApuntandoHaciaElNorte
	
	self assert: (marsRover direccionCardinalActual = 'Norte').! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 10:55:16'!
test03CuandoEstaApuntandoAlNorteYSeMandaElComandoFAvanzaUnaPosicionHaciaLaDireccionEsperada

	marsRover realizarUnConjuntoDeAcciones: 'f'.
	
	self assert: (marsRover posicionActual = (0@1)).! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 10:55:33'!
test04CuandoSeEnviaUnComandoParaRotarHaciaLaIzquierdALaNuevaDireccionDeMarsRoversEsOeste

	marsRover realizarUnConjuntoDeAcciones: 'l'.
	
	self assert: (marsRover direccionCardinalActual = 'Oeste').! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 10:55:50'!
test05CuandoSeEnviaUnComandoParaRotarHaciaLaDerechaLaNuevaDireccionDeMarsRoversEsEste

	marsRover realizarUnConjuntoDeAcciones: 'r'.
	
	self assert: (marsRover direccionCardinalActual = 'Este').! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 11:03:22'!
test06CuandoSeEnvianDosComandosParaRotarHaciaLaNuevaDireccionDeMarsRoverEsSur
	
	marsRover  realizarUnConjuntoDeAcciones: 'rr'.
	
	self assert: (marsRover direccionCardinalActual = 'Sur').! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 11:03:42'!
test07CuandoSeEnvianDosComandosParaRotarHaciaLaIzquierdaLaNuevaDireccionDeMarsRoverEsSur

	marsRover  realizarUnConjuntoDeAcciones: 'll'.
	
	self assert: (marsRover direccionCardinalActual = 'Sur').! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 10:57:02'!
test08CuandoSeRotaEnVariasDireccionesElResultadoEsElEsperado
	
	marsRover  realizarUnConjuntoDeAcciones: 'lrll'.
		
	self assert: (marsRover direccionCardinalActual = 'Sur').! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 10:58:13'!
test09CuandoSeRotaYSeMueveEnVariasDireccionesElResultadoDeLaPosicionEsElEsperado

	marsRover  realizarUnConjuntoDeAcciones: 'lf'.
	self assert: (marsRover posicionActual = (-1@0)).
	
	marsRover  realizarUnConjuntoDeAcciones: 'rf'.
	self assert: (marsRover posicionActual = (-1@1)).
	
	marsRover  realizarUnConjuntoDeAcciones: 'llf'.
	self assert: (marsRover posicionActual = (-1@0)).	! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 11:07:38'!
test11CuandoSeRealizaUnaAccionInvalidaMarsRoverEnviaUnMensajeDeError

	self should: [marsRover realizarUnConjuntoDeAcciones: 'A'] raise: Error 
	withExceptionDo: [:anError |self assert: (anError messageText = (marsRover class) errorAcciones)].! !

!MarsRoverTest methodsFor: 'Tests' stamp: 'VZ 6/2/2022 11:05:45'!
test12CuandoSeEnviaUnStringDeAccionesConUnaAccionInvalidaMarsRoverEjecutaTodasLasAccionesAntesDeLlegarALaInvalida

	self should: [marsRover realizarUnConjuntoDeAcciones: 'ffbAbbb'] raise: Error 
	withExceptionDo: [:anError | self assert: (anError messageText = (marsRover class) errorAcciones)].
	
	self assert: marsRover posicionActual = (0@1).! !


!classDefinition: #MarsRover category: 'MarsRover'!
Object subclass: #MarsRover
	instanceVariableNames: 'posicionActual direccionCardinalActual x y'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'Inicialización' stamp: 'Vf 5/28/2022 12:44:17'!
initialize

	x := 0.
	y := 0.
	posicionActual := (x@y).
	direccionCardinalActual := Norte new.
	! !


!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:53:18'!
moverHaciaAdelanteSobreElEste

	x := x + 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:45:38'!
moverHaciaAdelanteSobreElNorte

	y := y+1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:54:13'!
moverHaciaAdelanteSobreElOeste

	x := x - 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:49:54'!
moverHaciaAdelanteSobreElSur

	y := y - 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:53:35'!
moverHaciaAtrasSobreElEste

	x := x - 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:45:48'!
moverHaciaAtrasSobreElNorte

	y := y - 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:54:05'!
moverHaciaAtrasSobreElOeste

	x := x + 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'Vf 5/28/2022 14:49:44'!
moverHaciaAtrasSobreElSur

	y := y + 1.

	posicionActual := (x@y).! !

!MarsRover methodsFor: 'Operaciones privadas - movimiento' stamp: 'vf 5/29/2022 12:57:31'!
realizarAcciones: unaAccion

	((unaAccion = $l) or: (unaAccion = $r)) ifTrue: [^self rotar: unaAccion].
	
	((unaAccion = $f) or: (unaAccion = $b)) ifTrue: [^self mover: unaAccion].
	
	^self error: self class errorAcciones.
	
	
	
	! !


!MarsRover methodsFor: 'Operacione privadas - acciones' stamp: 'vf 5/29/2022 11:58:17'!
mover: unComando

	direccionCardinalActual mover: self SobreLaDireccionActualHacia: unComando.

	
	
	

	
	
	
! !

!MarsRover methodsFor: 'Operacione privadas - acciones' stamp: 'Vf 5/28/2022 13:20:08'!
rotar: unComando

	direccionCardinalActual := direccionCardinalActual rotar: unComando.
	
	

	
	
	
! !


!MarsRover methodsFor: 'Comandos MarsRover' stamp: 'Vf 5/28/2022 12:55:57'!
direccionCardinalActual

	^direccionCardinalActual direccionActual.! !

!MarsRover methodsFor: 'Comandos MarsRover' stamp: 'Vf 5/28/2022 11:30:13'!
posicionActual

	^posicionActual.! !

!MarsRover methodsFor: 'Comandos MarsRover' stamp: 'VF 5/29/2022 13:10:16'!
realizarUnConjuntoDeAcciones: stringDeAcciones
	
	stringDeAcciones do: [:accion | self realizarAcciones: accion].
	

	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'MarsRover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'vf 5/29/2022 12:50:45'!
errorAcciones

	^'Accion Invalida'.! !


!classDefinition: #PuntoCardinal category: 'MarsRover'!
Object subclass: #PuntoCardinal
	instanceVariableNames: 'direccionActual'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!PuntoCardinal methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 13:21:05'!
direccionActual

	self subclassResponsibility.! !

!PuntoCardinal methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 14:31:37'!
moverSobreLaDireccionActualHacia: unSentido

	self subclassResponsibility.! !

!PuntoCardinal methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 14:09:30'!
rotar: unComando

	self subclassResponsibility.! !


!PuntoCardinal methodsFor: 'Inicialización' stamp: 'Vf 5/28/2022 12:52:48'!
initialize

	self subclassResponsibility.! !


!classDefinition: #Este category: 'MarsRover'!
PuntoCardinal subclass: #Este
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!Este methodsFor: 'Inicialización' stamp: 'Vf 5/28/2022 12:49:05'!
initialize

	direccionActual  := 'Este'.! !


!Este methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 12:53:32'!
direccionActual

	^direccionActual.! !

!Este methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:12:07'!
mover: unMarsRover SobreLaDireccionActualHacia: unSentido

	(unSentido =$f) ifTrue: [^unMarsRover moverHaciaAdelanteSobreElEste].
	(unSentido =$b) ifTrue: [^unMarsRover moverHaciaAtrasSobreElEste ].
	! !

!Este methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:12:14'!
rotar: unComando

	(unComando = $l) ifTrue: [^Norte new].
	(unComando = $r) ifTrue: [^Sur new].
! !


!classDefinition: #Norte category: 'MarsRover'!
PuntoCardinal subclass: #Norte
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!Norte methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 12:53:56'!
direccionActual

	^direccionActual.! !

!Norte methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:12:54'!
mover: unMarsRover SobreLaDireccionActualHacia: unSentido

	(unSentido =$f) ifTrue: [^unMarsRover moverHaciaAdelanteSobreElNorte ].
	(unSentido =$b) ifTrue: [^unMarsRover moverHaciaAtrasSobreElNorte ].
	
	! !

!Norte methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:13:02'!
rotar: unComando

	(unComando = $l) ifTrue: [^Oeste new].
	(unComando = $r) ifTrue: [^Este new].
	
	! !


!Norte methodsFor: 'Inicialización' stamp: 'Vf 5/28/2022 12:49:00'!
initialize

	direccionActual  := 'Norte'.! !


!classDefinition: #Oeste category: 'MarsRover'!
PuntoCardinal subclass: #Oeste
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!Oeste methodsFor: 'Inicialización' stamp: 'Vf 5/28/2022 12:48:36'!
initialize

	direccionActual := 'Oeste'.! !


!Oeste methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 12:54:17'!
direccionActual

	^direccionActual.! !

!Oeste methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:14:16'!
mover: unMarsRover SobreLaDireccionActualHacia: unSentido

	(unSentido =$f) ifTrue: [^unMarsRover moverHaciaAdelanteSobreElOeste ].
	(unSentido =$b) ifTrue: [^unMarsRover moverHaciaAtrasSobreElOeste ].
	
	! !

!Oeste methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:14:22'!
rotar: unComando

	(unComando = $l) ifTrue: [^Sur new].
	(unComando = $r) ifTrue: [^Norte new].
	
	! !


!classDefinition: #Sur category: 'MarsRover'!
PuntoCardinal subclass: #Sur
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!Sur methodsFor: 'Inicialización' stamp: 'Vf 5/28/2022 12:48:54'!
initialize

	direccionActual := 'Sur'.! !


!Sur methodsFor: 'Operaciones' stamp: 'Vf 5/28/2022 12:54:21'!
direccionActual

	^direccionActual.! !

!Sur methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:15:10'!
mover: unMarsRover SobreLaDireccionActualHacia: unSentido

	(unSentido =$f) ifTrue: [^unMarsRover moverHaciaAdelanteSobreElSur ].	
	(unSentido =$b) ifTrue: [^unMarsRover moverHaciaAtrasSobreElSur ].
	
! !

!Sur methodsFor: 'Operaciones' stamp: 'VZ 6/2/2022 11:15:15'!
rotar: unComando

	(unComando = $l) ifTrue: [^Este new].
	(unComando = $r) ifTrue: [^Oeste new].
	
! !
