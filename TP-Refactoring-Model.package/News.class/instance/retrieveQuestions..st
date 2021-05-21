retrieving
retrieveQuestions: aUser
	
	^ self
		filtrarPreguntas: (self ordenarPorVotos: cuoora preguntasDeHoy)
		user: aUser