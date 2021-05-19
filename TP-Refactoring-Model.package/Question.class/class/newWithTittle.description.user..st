instance creation
newWithTittle: aTitle description: aDescription user: aUser
	^ self new
		initializeWithTittle: aTitle
		description: aDescription
		user: aUser