as yet unclassified
ordenarPorVotos: aCollection
	"Ordena la coleccion y devuelve las ultimas 100 o menos"

	^ (aCollection
		asSortedCollection: [ :a :b | a cantidadDeVotosPositivos > b cantidadDeVotosPositivos  ])
		last: (100 min: aCollection size)