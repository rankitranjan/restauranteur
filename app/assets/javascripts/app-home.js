var homeCenter = angular.module('HomeCenter', ['ngResource']);

homeCenter.factory("Home", function($resource) {
	return $resource("/home/index.json", {}, {
		index:   { method: 'GET', isArray: true, responseType: 'json' }
	});
})

homeCenter.controller("homeCtrl", function($scope, Home) {
	Home.index().$promise.then(function success(restaurants) {
		$scope.restaurants = restaurants;
	});
})
