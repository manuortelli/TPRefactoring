initialization
initializeWithTittle: aTitle description: aDescription user: aUser topic: aTopic
	"Inicializa la pregunta pero con topicos"
	topics := OrderedCollection new.
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
	answers := OrderedCollection new.
	title := aTitle.
	description := aDescription.
	self addTopic: aTopic.
	user := aUser