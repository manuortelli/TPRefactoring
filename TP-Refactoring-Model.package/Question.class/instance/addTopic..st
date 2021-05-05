adding
addTopic: aTopic
	"agrega un topico a las respuestas, y tambien agrega la pregunta al topico en si."
	topics add: aTopic.
	aTopic addQuestion: self