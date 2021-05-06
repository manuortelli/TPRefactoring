initialize
initializeLikeWithUser: anUser publication: aPublication
	user := anUser.
	publication:= aPublication.
	isLike := true.
	timstamp := DateAndTime now