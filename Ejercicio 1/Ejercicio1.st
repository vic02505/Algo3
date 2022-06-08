!classDefinition: #Habitat category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #Habitat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Habitat class' category: 'AvispasYAbejasParte2'!
Habitat class
	instanceVariableNames: 'cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella cantidadDePolillas cantidadDeOrugas cantidadDeHuevosDeAvispas cantidadDeHuevosConLaFirmaGeneticaDePolly cantidadDeHuevosConLaFirmaGeneticaDeLara'!

!Habitat class methodsFor: 'Huevos de avispas' stamp: 'VZ 4/23/2022 16:37:36'!
agregarUnHuevoAlHabitat
	cantidadDeHuevosDeAvispas := cantidadDeHuevosDeAvispas +1.! !

!Habitat class methodsFor: 'Huevos de avispas' stamp: 'VZ 4/23/2022 16:37:23'!
cantidadDeHuevosDeAvispas
	^cantidadDeHuevosDeAvispas ! !

!Habitat class methodsFor: 'Huevos de avispas' stamp: 'VZ 4/24/2022 12:36:06'!
destruirHuevosDeAvispas
	cantidadDeHuevosDeAvispas := 0.
	Habitat  borrarFirmaGeneticaDeOrianaYOrnella.
	Habitat  borrarFirmaGeneticaDePolly.
	Habitat  borrarFirmaGeneticaDeLara.

	! !


!Habitat class methodsFor: 'Orugas' stamp: 'VZ 4/23/2022 17:49:01'!
asesinarATodasLaOrugas
	cantidadDeOrugas  := 0.! !

!Habitat class methodsFor: 'Orugas' stamp: 'VZ 4/23/2022 17:33:31'!
aumentarEnUnoLaCantidadDeOrugas
	cantidadDeOrugas  := cantidadDeOrugas  +1.! !

!Habitat class methodsFor: 'Orugas' stamp: 'VZ 4/23/2022 17:45:04'!
cantidadDeOrugas.
	^cantidadDeOrugas.! !

!Habitat class methodsFor: 'Orugas' stamp: 'VZ 4/23/2022 17:34:21'!
consumirUnaOruga
	cantidadDeOrugas  := cantidadDeOrugas  -1.! !


!Habitat class methodsFor: 'Polillas' stamp: 'VZ 4/23/2022 20:18:38'!
asesinarATodasLasPolillas
	cantidadDePolillas  := 0.! !

!Habitat class methodsFor: 'Polillas' stamp: 'VZ 4/23/2022 20:18:12'!
aumentarEnUnoLaCantidadDePolillas
	cantidadDePolillas  := cantidadDePolillas  +1.
	! !

!Habitat class methodsFor: 'Polillas' stamp: 'VZ 4/23/2022 20:16:32'!
cantidadDePolillas
	^cantidadDePolillas.! !

!Habitat class methodsFor: 'Polillas' stamp: 'VZ 4/23/2022 20:17:16'!
consumirUnaPolilla
	cantidadDePolillas  := cantidadDePolillas  - 1.
	! !


!Habitat class methodsFor: 'Firma genetica de Oriana y Ornella' stamp: 'VZ 4/23/2022 22:08:55'!
aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella
	cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella  := cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella  +1.
	! !

!Habitat class methodsFor: 'Firma genetica de Oriana y Ornella' stamp: 'VZ 4/23/2022 22:10:24'!
borrarFirmaGeneticaDeOrianaYOrnella
	cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella  := 0.! !

!Habitat class methodsFor: 'Firma genetica de Oriana y Ornella' stamp: 'VZ 4/23/2022 22:09:54'!
cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella
	^cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella.! !

!Habitat class methodsFor: 'Firma genetica de Oriana y Ornella' stamp: 'VZ 4/24/2022 12:44:15'!
disminuirEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella
	cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella := cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella -1.! !


!Habitat class methodsFor: 'Firma genetica de Polly' stamp: 'VZ 4/23/2022 22:12:57'!
aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDePolly
	cantidadDeHuevosConLaFirmaGeneticaDePolly  := cantidadDeHuevosConLaFirmaGeneticaDePolly  + 1.! !

!Habitat class methodsFor: 'Firma genetica de Polly' stamp: 'VZ 4/23/2022 22:16:26'!
borrarFirmaGeneticaDePolly
	cantidadDeHuevosConLaFirmaGeneticaDePolly  := 0.! !

!Habitat class methodsFor: 'Firma genetica de Polly' stamp: 'VZ 4/24/2022 13:54:22'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^cantidadDeHuevosConLaFirmaGeneticaDePolly.! !

!Habitat class methodsFor: 'Firma genetica de Polly' stamp: 'VZ 4/24/2022 12:44:56'!
disminuirEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDePolly
	cantidadDeHuevosConLaFirmaGeneticaDePolly  := cantidadDeHuevosConLaFirmaGeneticaDePolly -1.! !


!Habitat class methodsFor: 'Firma Genetica de Lara' stamp: 'VZ 4/24/2022 12:29:53'!
aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeLara
	cantidadDeHuevosConLaFirmaGeneticaDeLara  := cantidadDeHuevosConLaFirmaGeneticaDeLara + 1.! !

!Habitat class methodsFor: 'Firma Genetica de Lara' stamp: 'VZ 4/24/2022 12:35:45'!
borrarFirmaGeneticaDeLara
	cantidadDeHuevosConLaFirmaGeneticaDeLara  := 0.! !

!Habitat class methodsFor: 'Firma Genetica de Lara' stamp: 'VZ 4/24/2022 12:28:42'!
borrarLaFirmaGeneticaDeLara
	cantidadDeHuevosConLaFirmaGeneticaDeLara  := 0.! !

!Habitat class methodsFor: 'Firma Genetica de Lara' stamp: 'VZ 4/24/2022 12:29:11'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	^cantidadDeHuevosConLaFirmaGeneticaDeLara.! !


!Habitat class methodsFor: '--** private fileout/in **--' stamp: 'VZ 4/24/2022 14:10:41'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella := 0.
	cantidadDePolillas := 1.
	cantidadDeOrugas := 1.
	cantidadDeHuevosDeAvispas := 1.
	cantidadDeHuevosConLaFirmaGeneticaDePolly := 0.
	cantidadDeHuevosConLaFirmaGeneticaDeLara := 1.! !


!classDefinition: #LaAvispaLara category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaLara
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaLara class' category: 'AvispasYAbejasParte2'!
LaAvispaLara class
	instanceVariableNames: ''!

!LaAvispaLara class methodsFor: 'Reproduccion' stamp: 'VZ 4/24/2022 14:05:53'!
intentarReproducirse
	
	(Habitat cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella > 0) ifTrue:[
		LaAvispaLara robarHuevoConLaFirmaGeneticaDeOrianaYOrnella.
		Habitat aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeLara.
		].
	
	(Habitat cantidadDeHuevosConLaFirmaGeneticaDePolly > 0) ifTrue:[
		LaAvispaLara robarHuevoConLaFirmaGeneticaDePolly.
		Habitat aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeLara .
		].
	
	
	! !

!LaAvispaLara class methodsFor: 'Reproduccion' stamp: 'VZ 4/24/2022 12:46:13'!
robarHuevoConLaFirmaGeneticaDeOrianaYOrnella
	Habitat  disminuirEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella.! !

!LaAvispaLara class methodsFor: 'Reproduccion' stamp: 'VZ 4/24/2022 12:45:58'!
robarHuevoConLaFirmaGeneticaDePolly
	Habitat disminuirEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDePolly.! !


!classDefinition: #LaAvispaOriana category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOriana
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOriana class' category: 'AvispasYAbejasParte2'!
LaAvispaOriana class
	instanceVariableNames: ''!

!LaAvispaOriana class methodsFor: 'Reproduccion' stamp: 'VZ 4/24/2022 12:49:38'!
intentarReproducirse

	(Habitat cantidadDeOrugas  > 0) ifTrue: 
	[
		Habitat agregarUnHuevoAlHabitat.
		Habitat consumirUnaOruga.
		Habitat aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella.
	].
		
		! !


!classDefinition: #LaAvispaOrnella category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOrnella class' category: 'AvispasYAbejasParte2'!
LaAvispaOrnella class
	instanceVariableNames: ''!

!LaAvispaOrnella class methodsFor: 'Reprocuccion' stamp: 'VZ 4/24/2022 12:49:30'!
intentarReproducirse

	(Habitat cantidadDeOrugas  > 0) ifTrue: 
	[
		Habitat agregarUnHuevoAlHabitat.
		Habitat consumirUnaOruga.
		Habitat aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella.
	].
! !


!classDefinition: #LaAvispaPolly category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaPolly class' category: 'AvispasYAbejasParte2'!
LaAvispaPolly class
	instanceVariableNames: ''!

!LaAvispaPolly class methodsFor: 'Reproduccion' stamp: 'VZ 4/24/2022 13:04:18'!
intentarReproducirse

	(Habitat cantidadDePolillas  > 0) ifTrue:
		[
		Habitat agregarUnHuevoAlHabitat.
		Habitat consumirUnaPolilla.
		Habitat aumentarEnUnoLaCantidadDeHuevosConLaFirmaGeneticaDePolly.
		].
! !


!classDefinition: #Pruebas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #Pruebas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pruebas class' category: 'AvispasYAbejasParte2'!
Pruebas class
	instanceVariableNames: 'cantidadDeHuevosDeAvispas'!

!Pruebas class methodsFor: 'tests - Oriana' stamp: 'JMB 4/18/2022 18:38:11'!
test01EnElInicioDeLosTiemposNoHayHuevos	
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0! !

!Pruebas class methodsFor: 'tests - Oriana' stamp: 'VZ 4/23/2022 16:40:50'!
test02CuandoOrianaLaAvispaSeReproducePorPrimeraVezDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - Oriana' stamp: 'VZ 4/23/2022 16:34:01'!
test03CadaVezQueOrianaSeReproduceDejaUnHuevoMas
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 2.! !

!Pruebas class methodsFor: 'tests - Oriana' stamp: 'VZ 4/23/2022 16:34:01'!
test04ParaDejarUnHuevoOrianaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - Oriana' stamp: 'VZ 4/23/2022 16:34:01'!
test05ParaDejarUnHuevoOrianaLaAvispaDecrementaEnUnoLaPoblacionDeOrugasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosOrugasMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - Oriana' stamp: 'VZ 4/23/2022 16:34:01'!
test06CuandoNoHayOrugasOrianaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!Pruebas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:24'!
test07CuandoOrnellaLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:18'!
test08ParaDejarUnHuevoOrnellaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - Ornella' stamp: 'JMB 4/21/2022 12:14:11'!
test09CuandoNoHayOrugasOrnellaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!Pruebas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:46'!
test10CuandoPollyLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:40'!
test11ParaDejarUnHuevoPollyLaAvispaReduceLaPoblacionDeUnaPolillaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaPolillaMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:36'!
test12ParaDejarUnHuevoPollyLaAvispaDecrementaEnUnoLaPoblacionDePolillasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosPolillasMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - Polly' stamp: 'JMB 4/21/2022 12:14:30'!
test13CuandoNoHayPolillasPollyLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispas isEqualTo: 0.! !


!Pruebas class methodsFor: 'tests - firma genetica' stamp: 'VZ 4/23/2022 21:14:01'!
test14CuandoOrianaLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - firma genetica' stamp: 'VZ 4/23/2022 21:14:01'!
test15CuandoOrianaLaAvispaAunNoSeReprodujoNoTieneHuevosConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - firma genetica' stamp: 'VZ 4/23/2022 21:14:01'!
test16CuandoPollyLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 1.
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - firma genetica' stamp: 'VZ 4/23/2022 21:14:01'!
test17CuandoOrnellaLaAvispaSeReproduceDejaUnHuevoConLaMismaFirmaGeneticaQueOriana
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella isEqualTo: 1.
	Assert 
		that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella  
		isEqualTo: self cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella! !


!Pruebas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:27'!
test18CuandoLaraLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOrnella intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1.! !

!Pruebas class methodsFor: 'tests - Lara la ladrona' stamp: 'VZ 4/23/2022 21:14:01'!
test19CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAOtraAvispa
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:18'!
test20CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAPolly
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaPolly intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 0.! !

!Pruebas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:12'!
test21CuandoLaraLaAvispaNoTieneRecursosNoDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
		
	self laAvispaLara intentarReproducirse.
		
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 0.! !


!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/24/2022 12:37:57'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	^Habitat cantidadDeHuevosConLaFirmaGeneticaDeLara.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 21:14:01'!
cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella
	^Habitat cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 22:21:12'!
cantidadDeHuevosConLaFirmaGeneticaDeOrnella
 	^Habitat  cantidadDeHuevosConLaFirmaGeneticaDeOrianaYOrnella.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 22:17:30'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^Habitat cantidadDeHuevosConLaFirmaGeneticaDePolly.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 15:20:52'!
habitat
	^Habitat! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 20:36:41'!
hacerQueElHabitatTengaLosRecursosSuficientes
	Habitat aumentarEnUnoLaCantidadDeOrugas.
	Habitat aumentarEnUnoLaCantidadDeOrugas.
	Habitat aumentarEnUnoLaCantidadDePolillas.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/24/2022 12:33:39'!
laAvispaLara
	^LaAvispaLara.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 16:59:51'!
laAvispaOriana
	^LaAvispaOriana! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 20:02:42'!
laAvispaOrnella
	^LaAvispaOrnella ! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 20:11:27'!
laAvispaPolly
	^LaAvispaPolly ! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 17:48:09'!
queElHabitatTengaDosOrugasMas
	Habitat aumentarEnUnoLaCantidadDeOrugas.
	Habitat aumentarEnUnoLaCantidadDeOrugas.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 20:21:40'!
queElHabitatTengaDosPolillasMas
	Habitat aumentarEnUnoLaCantidadDePolillas.
	Habitat aumentarEnUnoLaCantidadDePolillas.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 17:36:34'!
queElHabitatTengaUnaOrugaMas
	Habitat aumentarEnUnoLaCantidadDeOrugas.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 20:20:24'!
queElHabitatTengaUnaPolillaMas
	Habitat aumentarEnUnoLaCantidadDePolillas.! !

!Pruebas class methodsFor: 'Para completar' stamp: 'VZ 4/23/2022 20:57:41'!
retrocederElHabitatAlInicioDeLosTiempos
	Habitat destruirHuevosDeAvispas.
	Habitat asesinarATodasLaOrugas.
	Habitat asesinarATodasLasPolillas.! !


!Pruebas class methodsFor: '--** private fileout/in **--' stamp: 'VZ 4/24/2022 14:10:41'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeHuevosDeAvispas := nil.! !

Habitat initializeAfterFileIn!
Pruebas initializeAfterFileIn!