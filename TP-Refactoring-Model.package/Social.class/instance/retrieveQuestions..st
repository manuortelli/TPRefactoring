retrieving
retrieveQuestions: aUser 
	| qRet followingCol temp |
	qRet := OrderedCollection new.
	option = #social
		ifTrue: [ followingCol := OrderedCollection new.
			aUser following
				do: [ :follow | followingCol addAll: follow questions ].
			temp := followingCol
				asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size) ].