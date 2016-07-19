var show = angular.module('Show', ['ngResource']);

show.factory("Show", function($resource) {
	return $resource("/:id.json", {id: '1'}, {
		id:   { method: 'GET', responseType: 'json' }
	});
})

show.controller("showCtrl", function($scope, Show) {
	Show.id().$promise.then(function success(restaurant) {
		$scope.restaurant = restaurant;
	});
})
