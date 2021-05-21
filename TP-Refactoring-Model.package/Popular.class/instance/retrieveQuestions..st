as yet unclassified
retrieveQuestions: aUser
	^ self
		filtrarPreguntas: (self ordenarPorVotos: cuoora preguntasConVPMayorAlPromedio)
		user: aUser