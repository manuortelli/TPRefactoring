as yet unclassified
preguntasConVPMayorAlPromedio
	^self preguntasDeHoy
		select: [ :question | question cantidadDeVotosPositivos >= self promedioVotosPositivosDeHoy]