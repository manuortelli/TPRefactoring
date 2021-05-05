as yet unclassified
negativeVotes
	"Devuelve los votos negativos en una ordered collection"

	| r |
	r := OrderedCollection new.
	votes
		do: [ :vote | 
			vote isLike
				ifFalse: [ r add: vote ] ].
	^ r