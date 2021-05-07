retrieving
retrieveQuestions: aUser
	| newsCol |
	"option = #news
		ifTrue: [ newsCol := OrderedCollection new.
			cuoora questions
				do: [ :q | 
					q timestamp asDate = Date today
						ifTrue: [ newsCol add: q ] ].
			temp := newsCol
				asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size) ]"
	newsCol := cuoora questions
		select: [ :question | question timestamp asDate = Date today ].
	
	^ self ordenarPorVotos: newsCol