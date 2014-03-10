'use strict'

{find} = require 'prelude-ls'

angular.module 'gotit' <[]>

  .controller 'gotitController',
  <[
    $scope
    $location
    $routeParams
    $timeout
  ]> ++ (
    $scope,
    $location,
    $routeParams,
    $timeout,
  ) ->


