retrieving
retrieveQuestions: aUser
	"newsCol := OrderedCollection new.
			cuoora questions
				do: [ :q | 
					q timestamp asDate = Date today
						ifTrue: [ newsCol add: q ] ].
			temp := newsCol
				asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size) ]."

	^ self
		filtrarPreguntas: (self ordenarPorVotos: cuoora preguntasDeHoy)
		user: aUser