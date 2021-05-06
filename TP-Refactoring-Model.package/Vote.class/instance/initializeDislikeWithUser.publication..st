initialize
initializeDislikeWithUser: anUser publication: aPublication
	user := anUser.
	publication:= aPublication .
	isLike := false.
	timstamp := DateAndTime now