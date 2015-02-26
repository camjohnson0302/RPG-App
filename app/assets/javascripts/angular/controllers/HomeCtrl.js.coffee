@darkHeresy.controller 'HomeCtrl', ['$scope','$location', ($scope,$location) ->
   
  $scope.newCharacter = ->
    $location.path '/player_characters/new'
]