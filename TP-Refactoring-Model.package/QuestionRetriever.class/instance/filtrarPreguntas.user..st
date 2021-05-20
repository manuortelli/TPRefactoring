as yet unclassified
filtrarPreguntas: aCollection user: aUser
	^ aCollection reject: [ :q | q perteneceA: aUser ]