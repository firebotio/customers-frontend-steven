var Service = function() {
  var client = FirebotClient;

  endpoint = function(resource) {
    return client.apiUrl + '/' + client.apiVersion + '/services/' + resource;
  };

  this.email = function(data, callback) {
    $.ajax({
      data: data,
      headers: client.headers,
      method: 'post',
      url: endpoint('email'),
      success: function(response) {
        if (callback) {
          callback(response);
        }
      }
    });
  };
}

window.FirebotService = new Service();
