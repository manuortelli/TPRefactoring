setup
setUp
	question := Question
		newWithTitle: 'Question  title'
		description: 'Question description'
		user: User new
		topic: (Topic name: 'Un Topico' description: 'una Descripcion' )