retrieving
retrieveQuestions: aUser
	"| qRet topicsCol temp |
	qRet := OrderedCollection new.
	option = #topics
		ifTrue: [ topicsCol := OrderedCollection new.
			aUser topics do: [ :topic | topicsCol addAll: topic questions ].
			temp := topicsCol
				asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size) ]"
	^ self
		ordenarPorVotos: (aUser topics flatCollect: [ :topico | topico questions ])