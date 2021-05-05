as yet unclassified
negativeVotes
	"devuelve los dislikes en una coleccion r"
	| r |
	r := OrderedCollection new.
	votes
		do: [ :vote | 
			vote isLike
				ifFalse: [ r add: vote ] ].
	^ r