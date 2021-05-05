adding
addQuestion: aQuestion forUser: aUser
	"agrega una pregunta a la coleccion de preguntas y tambien a la del usuario"
	aUser addQuestion: aQuestion.
	questions add: aQuestion