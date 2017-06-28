angular.module('balboa.controllers').controller('PropertyQuoteController', ['$scope', '$http', '$log', function($scope, $http, $log) {
  $scope.init = function(quote)
  {
    $scope.additional_insureds_count = "" + quote.additional_insureds.length;
    $scope.quote = quote;
  };

  $scope.$watch("additional_insureds_count", function(newVal, oldVal) {
    newVal = parseInt(newVal);
    if(newVal > $scope.quote.additional_insureds.length)
    {
      for(var i = $scope.quote.additional_insureds.length; i < newVal; i++)
      {
        $scope.quote.additional_insureds.push({});
      }
    }
    else
    {
      while($scope.quote.additional_insureds.length > newVal)
      {
        $scope.quote.additional_insureds.splice($scope.quote.additional_insureds.length - 1, 1);
      }
    }
  });

}]);