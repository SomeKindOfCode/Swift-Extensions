import Foundation
import CoreLocation

extension CLLocationCoordinate2D {
    init?(lat: CLLocationDegrees, lng: CLLocationDegrees) {
        let obj = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        
        if CLLocationCoordinate2DIsValid(obj) {
            self = obj
        } else {
            return nil
        }
    }
    
    init(lat: CLLocationDegrees, lng: CLLocationDegrees, fallback: CLLocationCoordinate2D) {
        self = CLLocationCoordinate2D(lat: lat, lng: lng) ?? fallback
    }
}

/*

CLLocationCoordinate2D(lat: 5, lng: 13) // success
CLLocationCoordinate2D(lat: 5000, lng: 200) // nil
CLLocationCoordinate2D(latitude: 5000, longitude: 200) // invalid coordinate

CLLocationCoordinate2D(lat: 5000, lng: 200, fallback: CLLocationCoordinate2D(latitude: 0, longitude: 0)) // falls back to 0,0

*/
