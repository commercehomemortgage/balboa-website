angular.module('balboa.controllers').controller('JewelryQuoteController', ['$scope', '$http', '$log', function($scope, $http, $log) {
  $scope.init = function(quote)
  {
    $scope.valuable_items_count = "" + quote.valuable_items.length;
    $scope.quote = quote;
  };

  $scope.$watch("valuable_items_count", function(newVal, oldVal) {
    newVal = parseInt(newVal);
    if(newVal > $scope.quote.valuable_items.length)
    {
      for(var i = $scope.quote.valuable_items.length; i < newVal; i++)
      {
        $scope.quote.valuable_items.push({});
      }
    }
    else
    {
      while($scope.quote.valuable_items.length > newVal)
      {
        $scope.quote.valuable_items.splice($scope.quote.valuable_items.length - 1, 1);
      }
    }
  });

}]);