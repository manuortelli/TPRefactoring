set up
setUp
	cuoora := CuOOra new.
	socialRetriever := Social new:cuoora.
	topicsRetriever := Topics new:cuoora.
	newsRetriever := News new:cuoora.
	popularTodayRetriever := Popular new:cuoora.
	topicOO1 := Topic
		name: 'OO1'
		description: 'This topic is for discussing about OO1 issues'.
	topicOO2 := Topic
		name: 'OO2'
		description: 'This topic is for discussing about OO2 issues'.
	user1 := User username: 'Manuel' password: 'unaPass'.
	user2 := User username: 'Arturo' password: 'otraPass123'.
	user3 := User username: 'Benjamin' password: 'algunaQueOtraPass'.
	user1
		follow: user2;
		follow: user3.
	user1 addTopic: topicOO1.
	user2 addTopic: topicOO2.
	user3 addTopic: topicOO2.
	cuoora
		addUser: user1;
		addUser: user2;
		addUser: user3.
	questionUser1TopicOO1 := Question
		newWithTitle: 'How to create a class in Pharo'
		description: ''
		user: user1
		topic: topicOO1.
	questionUser3TopicOO2 := Question
		newWithTitle: 'How to create a WAComponent for...'
		description: ''
		user: user3
		topic: topicOO2.
	cuoora addQuestion: questionUser1TopicOO1 forUser: user1.
	cuoora addQuestion: questionUser3TopicOO2 forUser: user3