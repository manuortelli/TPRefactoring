as yet unclassified
retrieveQuestions: aUser
	| qRet popularTCol promedioVotos temporal |
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
	promedioVotos := cuoora questions
		sum:
			[ :question | question positiveVotes size ]
				/ cuoora preguntasDeHoy size.
	temporal := cuoora preguntasDeHoy
		select: [ :question | question positiveVotes size >= promedioVotos ].
	temporal := self ordenarPorVotos: temporal.
	^ temporal reject:[ :question | question user = aUser]