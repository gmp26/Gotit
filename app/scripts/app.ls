'use strict'

angular.module 'Gotit' <[ ngRoute ngTouch gotit ui.bootstrap ]>
  .config <[$routeProvider]> ++ ($routeProvider) ->

    $routeProvider
    .when '/', do
      templateUrl: 'views/gotit.html'
      controller: 'gotit'
    .otherwise do
      redirectTo: '/'
