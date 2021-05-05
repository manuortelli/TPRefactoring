initialization
initializeWithAnswer: anAnswer user: anUser cuestion: aQuestion
	description := anAnswer.
	user := anUser.
	question := aQuestion.
	votes := OrderedCollection new.
	timestamp := DateAndTime now.