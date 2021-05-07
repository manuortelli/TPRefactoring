as yet unclassified
preguntasDeHoy
	"Devuelve una coleccion de preguntas con las preguntas de hoy"
	^ self questions select: [ :question | question esDeHoy ]