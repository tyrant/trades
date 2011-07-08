/*  Add functions to the Google Map object that make the marker list for a given map a property of it.
 *  Usual array/list methods - addMarker(), getMarkers(), clearMarkers().
 *  Also location-specific methods - getMarkerForLocation(), trimFromBounds().
 */
 
google.maps.Map.prototype.markers = new Array();

google.maps.Map.prototype.addMarker = function(marker) {
  this.markers[this.markers.length] = marker;
};

google.maps.Map.prototype.getMarkers = function() {
  return this.markers;
};

google.maps.Map.prototype.clearMarkers = function() {
  $.each(this.markers, function(i, marker) {
    marker.setMap(null);
  });
  this.markers = new Array();
};

google.maps.Map.prototype.getMarkerForLocation = function(loc) {
  return _.find(this.markers, function(m) {
    return m.getPosition().equals(loc);
  });
};

// For a given set of bounds, iterate over every marker, and if marker i is outside those bounds, delete it.
google.maps.Map.prototype.trimFromBounds = function(bounds) {
  _.each(this.markers, function(m, index, markers) {
    if (!bounds.contains(m.getPosition())) {
      m.setMap(null);
      markers[index] = false;
    }
  });
  this.markers = _.compact(this.markers);
};




google.maps.Map.prototype.totalListingCount = function() {
  return _.inject(this.markers, function(memo, marker) {
    return memo + marker.listings.length;
  }, 0);
};

google.maps.Marker.prototype.addListing = function(listing) {
  if (this.listings == null) {
    this.listings = [];
  } 
  this.listings[this.listings.length] = listing;
};

google.maps.Marker.prototype.go_to_listing = function(listing_id) {
  var page;
  _.each(this.listings, function(listing, index) {
    if (listing.listing_id == listing_id) {
      page = index;
    }
  });
  if (page) {
    this.marker_info_window.go_to_page(page);
  }
};



google.maps.Marker.prototype.setup_info_window = function() {
  this.marker_info_window = new MarkerInfoWindow(this);
};



google.maps.Map.prototype.resetLocation = function() {
  window.map.setZoom(default_zoom);
  window.map.setCenter(default_center);
};
