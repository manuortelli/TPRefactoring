as yet unclassified
ordenarPorVotos: aCollection
	"Ordena la coleccion y devuelve las ultimas 100 o menos"
	^ (aCollection
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ])
		last: (100 min: aCollection size)