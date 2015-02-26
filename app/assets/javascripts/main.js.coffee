@darkHeresy = angular.module('darkHeresy', ['ui.bootstrap'])


@darkHeresy.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/player_characters', {
      templateUrl: '/templates/player_characters/index.html',
      controller: 'PlayerCharacterIndexCtrl'
    }).
    when('/player_characters/new', {
      templateUrl: '/templates/player_characters/new.html
      ',
      controller: 'PlayerCharacterNewCtrl'
    }).
    otherwise({
      templateUrl: '/templates/home.html',
      controller: 'HomeCtrl'
    }) 
])
