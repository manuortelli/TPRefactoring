as yet unclassified
positiveVotes
	"devuelve los votos positivos en una colleccion"
	| r |
	r := OrderedCollection new.
	votes
		do: [ :vote | 
			vote isLike
				ifTrue: [ r add: vote ] ].
	^ r