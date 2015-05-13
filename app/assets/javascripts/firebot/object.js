var FirebotObject = function(name) {
  var client = FirebotClient;

  endpoint = function(objectId) {
    var baseUrl = client.apiUrl + '/' + client.apiVersion + '/objects/' + name;
    if (objectId) {
      baseUrl += '/' + objectId;
    }
    return baseUrl;
  };

  this.create = function(data, callback) {
    $.ajax({
      data: data,
      headers: client.headers,
      method: 'post',
      url: endpoint(),
      success: function(response) {
        if (callback) {
          callback(response);
        }
      }
    })
  };
}
