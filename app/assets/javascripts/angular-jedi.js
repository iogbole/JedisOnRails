function JediNgController($scope, $http) {
   $http.get('http://yambox-129732.euw1-2.nitrousbox.com/jedis/2.json'). 
        success(function(data) {
            $scope.jedis = data;
        });
}

function JediNgControllerRepeat($scope, $http ) {

   $http.get('http://yambox-129732.euw1-2.nitrousbox.com/jedis.json'). 
      // how to pass authorization header in angular:  {headers: {'Authorization': 'Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=='}
        success(function(data) {
            $scope.jedis = data;
          //  $scope.jedis = data2; 

           // $scope.data = {};
        });


}

