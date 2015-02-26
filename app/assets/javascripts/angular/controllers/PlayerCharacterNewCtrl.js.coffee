@darkHeresy.controller 'PlayerCharacterNewCtrl', ['$scope', '$location','$http', '$window', ($scope,$location,$http,$window) ->
	


	$scope.currentPage = 0;
	$scope.baseStats = ["WS","BS","S","T","AG","INT","PER","WP","FEL"];
	$scope.secondaryStats = ["Fate","Wounds"];
	$scope.move = ["Half","Full","Charge","run"];
	$scope.options = [{"choice1" : "Lasgun","choice2" : "Shotgun"},{"choice1" : "Training(Las)","choice2" : "Training(Basic)"},{"choice1" : "Fast Reload","choice2" : "Fast Aim"}];
	

	$scope.selectedPlanet = null;
	$scope.selectedCareer = null;
	

	$http.get("./homeworlds.json").success((data) ->
		$scope.homeworlds = data
		$scope.selectedPlanet = $scope.	homeworlds[0];
	)

	$http.get("./traits.json").success((data) ->
		$scope.traits = data
		console.log(data)
	)

	$http.get("./careers.json").success((data) ->
		$scope.careers = data
		$scope.selectedCareer = $scope.careers[0];
	)


	
	$scope.new = {career:{"name":"Smeller","description":"Smells things", "pic_url":"none"}};



	# $scope.create = -> 
	# 	$http.post("./careers",JSON.stringify($scope.new)).success ->
	# 		$http.get("./careers.json").success((data) ->
	# 			$scope.careers = data
	# 	)




	$scope.selectPlanet = (world) ->
		$scope.selectedPlanet = world;
		console.log(world);

	$scope.selectCareer = (career) ->
		$scope.selectedCareer = career;



	$scope.back = ->
		$scope.currentPage -=1
		console.log($scope.currentPage)

	$scope.continue = ->
		$scope.currentPage +=1
		console.log($scope.currentPage)

	$scope.rollStat = (career, stat) ->
		if _.contains($scope.newCharacter.career.bonuses, stat)
			$scope.newCharacter.stat = Math.random(2,21) + 25 
		else if _.contains($scope.career.penalties, stat)
			$scope.newCharacter.stat = Math.random(2,21) + 15 
		else
			$scope.newCharacter.stat = Math.random(2,21)

]