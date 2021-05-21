retrieving
retrieveQuestions: aUser
	^ self
		filtrarPreguntas: (self ordenarPorVotos: aUser preguntasDeFollows)
		user: aUser