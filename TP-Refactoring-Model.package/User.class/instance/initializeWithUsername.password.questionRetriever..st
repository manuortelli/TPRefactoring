initialize
initializeWithUsername: aUsername password: aPassword questionRetriever: aQuestionRetriever
	username:= aUsername.
	password := aPassword .
	questionRetriever := aQuestionRetriever .
	questions := OrderedCollection new.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	following := OrderedCollection new.
	votes := OrderedCollection new