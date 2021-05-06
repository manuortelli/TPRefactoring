initialization
initializeWithTittle: aTitle description: aDescription user: aUser topic: aTopic

		title:= aTitle.
		description:= aDescription.
		self addTopic: aTopic.
		user:= aUser.
		answers := OrderedCollection new.
	topics := OrderedCollection new.
	votes := OrderedCollection new.
	timestamp := DateAndTime now