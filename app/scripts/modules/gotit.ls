'use strict'

{find} = require 'prelude-ls'

angular.module 'gotit' <[]>

  .controller 'gotit',
  <[
    $scope
    $location
    $routeParams
    $timeout
    $modal
    $log
  ]> ++ (
    $scope,
    $location,
    $routeParams,
    $timeout,
    $modal,
    $log
  ) !->

    $scope.items =
      "item1"
      "item2"
      "item3"

    $scope.open = ->

      modalInstance = $modal.open do
        templateUrl: "views/myModalContent.html"
        controller: 'ModalInstanceCtrl'
        resolve:
          items: ->
            $scope.items

      modalInstance.result.then ((selectedItem) !->
        $scope.selected = selectedItem
      ), -> $log.info "Modal dismissed at: " + new Date!

  .controller 'ModalInstanceCtrl', 
  <[
    $scope
    $modalInstance
    items
  ]> ++ (
    $scope,
    $modalInstance,
    items
  ) !->

    $scope.items = items
    $scope.selected = item: $scope.items[0]
    $scope.ok = -> $modalInstance.close $scope.selected.item
    $scope.cancel = -> $modalInstance.dismiss "cancel"



