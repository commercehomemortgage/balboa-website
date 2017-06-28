'use strict';

angular.module('balboa.controllers', []);
var balboaApp = angular.module('balboa', ['balboa.controllers'])
  .config(['$httpProvider', function($httpProvider) {
    $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
}]);
