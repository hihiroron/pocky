

/*global angular: true*/
angular.module('myapp', ['ngAnimate', 'ngSanitize', 'mgcrea.ngStrap','mgcrea.ngStrap.modal', 'mgcrea.ngStrap.aside', 'mgcrea.ngStrap.tooltip'])

  .controller('myCtrl', function ($scope, $modal) {


    $scope.modal = {
    		  "title": "商品詳細",
              "itemName": document.getElementById("itemName").value,
    		  "description": document.getElementById("description").value


    		};

    $scope.show = true;
    $scope.title = "Title";

    // Pre-fetch an external template populated with a custom scope
    var myOtherModal = $modal({scope: $scope, template: 'resources/html/modal.html', show: false});
    // Show when some event occurs (use $promise property to ensure the template has been loaded)
    $scope.showModal = function() {
      myOtherModal.$promise.then(myOtherModal.show);
    };

  });


