as yet unclassified
retrieveQuestions: aUser
	| qRet popularTCol averageVotes temp |
	"qRet := OrderedCollection new.
	option = #popularToday
		ifTrue: [ popularTCol := OrderedCollection new.
			cuoora questions
				do: [ :q | 
					q timestamp asDate = Date today
						ifTrue: [ popularTCol add: q ] ].
			averageVotes := (cuoora questions
				sum: [ :q | q positiveVotes size ]) / popularTCol size.
			temp := (popularTCol
				select: [ :q | q positiveVotes size >= averageVotes ])
				asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size) ].
	^ qRet reject: [ :q | q user = aUser ]"
	
	popularTCol := cuoora questions select:[ :question | question timestamp asDate = Date today]
	
	