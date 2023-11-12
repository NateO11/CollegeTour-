import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("College Tour")
                    .font(.title)
                    .padding()
                    .foregroundColor(.blue)
                TabView {
                    Map_View()
                        .tabItem {
                            Image(systemName: "map")
                            Text("Map")
                        }
                    Overview_View()
                        .tabItem {
                            Image(systemName: "person")
                            Text("Overview")
                        }
                    Sort_View()
                        .tabItem {
                            Image(systemName: "folder")
                            Text("Sort")
                        }
                }
            }
        //    .navigationBarTitle("") // Empty title to hide the default navigation title
       //     .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
