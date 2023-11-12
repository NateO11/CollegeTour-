//
//  Map_View.swift
//  CollegeTour
//
//  Created by Nate Owen on 11/12/23.


import SwiftUI
import MapKit

struct Map_View: View {
    @State private var region: MKCoordinateRegion = {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Map_View_Previews: PreviewProvider {
    static var previews: some View {
        Map_View()
    }
}
