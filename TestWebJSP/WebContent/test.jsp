<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Computer and Education</title>

	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/myweb.css" >

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js" ></script>
    <script src="js/angular.min.js"></script>
    <script src="js/jquery.validate.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<ol class="breadcrumb">
			  <li>
			  	<span id="abstract_span" class="glyphicon glyphicon-triangle-right"></span>
			  	<a id="abstract_link" data-toggle="collapse" data-target="#abstract" href="#">Abstract</a>
			  </li>
			  <li>
			  	<span id="research_span" class="glyphicon glyphicon-triangle-right"></span>
			  	<a id="research_link" data-toggle="collapse" data-target="#research">Research highlights</a></li>
			  <li>
			  	<span id="abstract_span" class="glyphicon glyphicon-file"></span>
			  	<a data-toggle="collapse" data-target="#downloadfile" href="http://www.sciencedirect.com/science/article/pii/S0360131516301634/pdfft?md5=91355ebd608d131f4a0ba5deb13e3b54&amp;pid=1-s2.0-S0360131516301634-main.pdf">PDF (778 K)</a></li>
			</ol>
			
			<div class="collapse" id="abstract">
			  <div class="well">
			  	<h3 class="h3">Abstract</h3>
			    <p class="paraText">Using predictive modeling methods, it is possible to identify at-risk students early and inform both the instructors and the students. While some universities have started to use standards-based grading, which has educational advantages over common score-based grading, at–risk prediction models have not been adapted to reap the benefits of standards-based grading in courses that utilize this grading. In this paper, we compare predictive methods to identify at-risk students in a course that used standards-based grading. Only in-semester performance data that were available to the course instructors were used in the prediction methods. When identifying at-risk students, it is important to minimize false negative (i.e., type II) error while not increasing false positive (i.e., type I) error significantly. To increase the generalizability of the models and accuracy of the predictions, we used a feature selection method to reduce the number of variables used in each model. The Naive Bayes Classifier model and an Ensemble model using a sequence of models (i.e., Support Vector Machine, K-Nearest Neighbors, and Naive Bayes Classifier) had the best results among the seven tested modeling methods.</p>
			  </div>
			</div>
			<div class="collapse" id="research">
			  <div class="well">
			  	<h3 class="h3">Highlights</h3>
			    <dl class="listitem" id="list_ulist0010"><dt class="label">•</dt><dd><p id="p0010">Seven different prediction models for identifying at-risk students were compared.</p></dd><dt class="label">•</dt><dd><p id="p0015">Only in-semester performance factors (i.e., grades) were used in the models.</p></dd><dt class="label">•</dt><dd><p id="p0020">Models were created based on standards-based grading.</p></dd><dt class="label">•</dt><dd><p id="p0025">Feature selection method resulted in higher accuracy of the models.</p></dd></dl>
			  </div>
			</div>
			<script>
				$('#abstract').on('show.bs.collapse', function () {
					$('#abstract_span').removeClass("glyphicon glyphicon-triangle-right").addClass("glyphicon glyphicon-triangle-bottom")
					$('#abstract_link').text('Close abstract');
					$('#research').removeClass("collapse in").addClass("collapse");
					$('#research_span').removeClass("glyphicon glyphicon-triangle-bottom").addClass("glyphicon glyphicon-triangle-right")
					$('#research_link').text('Research highlights');
					
				})
				$('#abstract').on('hide.bs.collapse', function () {
					$('#abstract_span').removeClass("glyphicon glyphicon-triangle-bottom").addClass("glyphicon glyphicon-triangle-right")
					$('#abstract_link').text('Abstract');
					
				})
				$('#research').on('show.bs.collapse', function () {
					$('#research_span').removeClass("glyphicon glyphicon-triangle-right").addClass("glyphicon glyphicon-triangle-bottom")
					$('#research_link').text('Close research highlights');
					$('#abstract').removeClass("collapse in").addClass("collapse");
					$('#abstract_span').removeClass("glyphicon glyphicon-triangle-bottom").addClass("glyphicon glyphicon-triangle-right")
					$('#abstract_link').text('Abstract');
				})	
				$('#research').on('hide.bs.collapse', function () {
					$('#research_span').removeClass("glyphicon glyphicon-triangle-bottom").addClass("glyphicon glyphicon-triangle-right")
					$('#research_link').text('Research highlights');

					
				})							         
			</script>
		</div>
	</div>
</body>
</html>