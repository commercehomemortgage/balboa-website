angular.module('balboa.controllers').controller('CommercialQuoteController', ['$scope', '$http', '$log', function($scope, $http, $log) {
  $scope.insuranceTypes = [
    "General Liability",
    "Professional Liability (aka E&O)",
    "Workers Comp",
    "Commercial Auto",
    "Property",
    "Cyber Liability",
    "Employment Practices Liability",
    "Directors & Officers"
  ];
  $scope.init = function(quote)
  {
    $scope.selectedInsuranceTypes = [];
    if(quote.commercial_type_of_insurance && quote.commercial_type_of_insurance != "")
    {
      $scope.selectedInsuranceTypes = quote.commercial_type_of_insurance.split(",");
    }
    $scope.quote = quote;
  };

  $scope.$watchCollection("selectedInsuranceTypes", function(newVal) {
    $scope.quote.commercial_type_of_insurance = $scope.selectedInsuranceTypes.join(",");
  });
}]);