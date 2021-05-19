initialization
initializeWithTittle: aTitle description: aDescription user: aUser
	"Inicializa la pregunta pero sin topicos."
	topics := OrderedCollection new.
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
	answers := OrderedCollection new.
	title := aTitle.
	description := aDescription.
	user := aUser