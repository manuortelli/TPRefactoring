retrieving
retrieveQuestions: aUser
	^ self
		filtrarPreguntas: (self ordenarPorVotos: aUser preguntasDeInteres)
		user: aUser