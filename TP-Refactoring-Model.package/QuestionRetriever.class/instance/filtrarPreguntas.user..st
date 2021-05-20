as yet unclassified
filtrarPreguntas: aCollection user: aUser
	"Filtra las preguntas del usuario"
	^ aCollection reject: [ :q | q perteneceA: aUser ]