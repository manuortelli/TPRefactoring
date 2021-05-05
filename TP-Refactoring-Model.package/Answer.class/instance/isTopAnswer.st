accessing
isTopAnswer
	"Devuelve un booleano para ver si va primera en las respuestas"
	^ self positiveVotes
		>=
			((question sum: [ :answer | answer positiveVotes size ])
				/ question answer size)