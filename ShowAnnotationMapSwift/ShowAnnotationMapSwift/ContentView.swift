import SwiftUI
import Foundation
import MapKit


struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}


let annotation = [
    Location(name: "Goa", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)),
    Location(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508))
]

struct ContentView: View {
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )
    
    var body: some View {
        
        Map(coordinateRegion: $region,
            showsUserLocation: true,
            annotationItems: annotation) { location in
                MapPin(coordinate: location.coordinate, tint: .red)
            }
            .mapControls {
                MapUserLocationButton()
            }
            .onAppear {
                CLLocationManager().requestWhenInUseAuthorization()
            }

            
    }
}

#Preview {
    ContentView()
}
