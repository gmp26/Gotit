'use strict'

angular.module 'Gotit' <[ ngRoute ngTouch gotit ui.bootstrap ]>
  .config <[$routeProvider]> ++ ($routeProvider) ->

    $routeProvider
    .when '/', do
      templateUrl: 'views/main.html'
      controller: 'gotit'
    .otherwise do
      redirectTo: '/'
