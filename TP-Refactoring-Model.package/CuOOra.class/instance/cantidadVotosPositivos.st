accessing - private
cantidadVotosPositivos
	^ (self questions sum: [ :question | question cantidadDeVotosPositivos ]) 