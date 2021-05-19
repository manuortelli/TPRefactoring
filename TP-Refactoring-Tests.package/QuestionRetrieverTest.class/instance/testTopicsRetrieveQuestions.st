testing
testTopicsRetrieveQuestions
	| questionUser2TopicOO3 |
	self
		assert: (topicsRetriever retrieveQuestions: user1) size
		equals: 1.
	self
		assert: (topicsRetriever retrieveQuestions: user2) size
		equals: 1.
	self
		assert: (topicsRetriever retrieveQuestions: user3) size
		equals: 1.
	questionUser2TopicOO3 := Question
		newWithTitle: 'Which bad smell...?'
		description: ''
		user: user2
		topic: topicOO2.
	cuoora addQuestion: questionUser2TopicOO3.
	self
		assert: (topicsRetriever retrieveQuestions: user2) size
		equals: 2.
	self
		assert: (topicsRetriever retrieveQuestions: user3) size
		equals: 2.
	self
		assert: (topicsRetriever retrieveQuestions: user3) first
		equals: questionUser2TopicOO3.
	self
		assert: (topicsRetriever retrieveQuestions: user1) size
		equals: 1