GetPercentile <-
function(score, type=c("Verbal", "Quantitative", "Analytical"), scores.VQ=NULL, scores.A=NULL) {
	if(is.null(scores.VQ)) {
		scores.VQ<-structure(list(Score = c(170L, 169L, 168L, 167L, 166L, 165L, 
164L, 163L, 162L, 161L, 160L, 159L, 158L, 157L, 156L, 155L, 154L, 
153L, 152L, 151L, 150L, 149L, 148L, 147L, 146L, 145L, 144L, 143L, 
142L, 141L, 140L, 139L, 138L, 137L, 136L, 135L, 134L, 133L, 132L, 
131L, 130L), Verbal = c(99L, 99L, 98L, 97L, 96L, 95L, 94L, 92L, 
90L, 87L, 85L, 81L, 79L, 74L, 71L, 67L, 63L, 59L, 54L, 50L, 45L, 
41L, 37L, 33L, 29L, 25L, 22L, 18L, 16L, 13L, 10L, 8L, 7L, 5L, 
3L, 3L, 2L, 1L, 1L, 1L, 0L), Quantitative = c(98L, 97L, 95L, 
94L, 92L, 90L, 88L, 86L, 83L, 80L, 78L, 75L, 71L, 68L, 64L, 60L, 
56L, 52L, 48L, 45L, 40L, 37L, 32L, 28L, 25L, 21L, 18L, 15L, 12L, 
10L, 8L, 6L, 4L, 3L, 2L, 2L, 1L, 1L, 0L, 0L, 0L)), .Names = c("Score", 
"Verbal", "Quantitative"), class = "data.frame", row.names = c(NA, 
-41L))
	}
	if(is.null(scores.A)) {
		scores.A <- data.frame(Score=seq(from=6, to=0, by=-0.5), Analytical=c(99, 98, 93, 80, 56, 38, 15, 7, 2, 1, 0, 0, 0), stringsAsFactors=FALSE)
	}
	type <- match.arg(type)
	result <- NA
	if(type!="Analytical") {
		if(score %in% scores.VQ$Score) {		
			result <- scores.VQ[which(score == scores.VQ$Score), 	which(colnames(scores.VQ)==type)]	
		}
	} else {
		if(score %in% scores.A$Score) {		
			result <- scores.A[which(score == scores.A$Score), 	which(colnames(scores.A)==type)]	
		}			
	}
	return(result)
}
