initialization
initializeWithUsername: aUsername password: aPassword 
	username := aUsername.
	password := aPassword.
	questions := OrderedCollection new.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	following := OrderedCollection new.
	votes := OrderedCollection new