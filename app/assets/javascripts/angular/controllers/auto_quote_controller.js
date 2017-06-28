angular.module('balboa.controllers').controller('AutoQuoteController', ['$scope', '$http', '$log', function($scope, $http, $log) {
  $scope.allDiscounts = [
    "Accredited College Alumni",
    "Educator",
    "Engineer/Scientist",
    "Fire Fighter",
    "Police Officer",
    "CalCPA Member",
    "College Grad",
    "Good Student (indicate which driver below)"
  ];
  $scope.init = function(quote)
  {
    $scope.drivers_count = "" + quote.drivers.length;
    $scope.vehicles_count = "" + quote.vehicles.length;
    $scope.quote = quote;
    $scope.selectedDiscounts = [];
    if(quote.auto_discounts && quote.auto_discounts != "")
    {
      $scope.selectedDiscounts = quote.auto_discounts.split(",");
    }
  };

  $scope.isCollegeGrad = function()
  {
    return $scope.quote.auto_discounts.indexOf("College Grad") > -1;
  };

  $scope.$watch("drivers_count", function(newVal, oldVal) {
    newVal = parseInt(newVal);
    if(newVal > $scope.quote.drivers.length)
    {
      for(var i = $scope.quote.drivers.length; i < newVal; i++)
      {
        $scope.quote.drivers.push({});
      }
    }
    else
    {
      while($scope.quote.drivers.length > newVal)
      {
        $scope.quote.drivers.splice($scope.quote.drivers.length - 1, 1);
      }
    }
  });
  $scope.$watch("vehicles_count", function(newVal, oldVal) {
    newVal = parseInt(newVal);
    if(newVal > $scope.quote.vehicles.length)
    {
      for(var i = $scope.quote.vehicles.length; i < newVal; i++)
      {
        $scope.quote.vehicles.push({});
      }
    }
    else
    {
      while($scope.quote.vehicles.length > newVal)
      {
        $scope.quote.vehicles.splice($scope.quote.vehicles.length - 1, 1);
      }
    }
  });
  $scope.$watchCollection("selectedDiscounts", function(newVal) {
    $scope.quote.auto_discounts = $scope.selectedDiscounts.join(",");
  });

  $scope.allDriverNames = function()
  {
    var drivers = [];
    for(var i = 0; i < $scope.quote.drivers.length; i++)
    {
      var driver = $scope.quote.drivers[i];
      drivers.push(driver.first_name + " " + driver.last_name);
    }
    return drivers;
  };
}]);