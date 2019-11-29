import MapKit

extension MKMapRect {
    init(coordinates: [CLLocationCoordinate2D]) {
        var coordinates = coordinates
        if !coordinates.isEmpty {
            let first = coordinates.removeFirst()
            var top = first.latitude
            var bottom = first.latitude
            var left = first.longitude
            var right = first.longitude
            coordinates.forEach { coordinate in
                top = max(top, coordinate.latitude)
                bottom = min(bottom, coordinate.latitude)
                left = min(left, coordinate.longitude)
                right = max(right, coordinate.longitude)
            }
            let topLeft = MKMapPoint(CLLocationCoordinate2D(latitude:top, longitude:left))
            let bottomRight = MKMapPoint(CLLocationCoordinate2D(latitude:bottom, longitude:right))
            self = MKMapRect(x:topLeft.x, y:topLeft.y,
                             width:bottomRight.x - topLeft.x, height:bottomRight.y - topLeft.y)
        } else {
            self = MKMapRect(origin: MKMapPoint(x: 0, y: 0), size: MKMapSize(width: 0, height: 0))
        }
    }
}
