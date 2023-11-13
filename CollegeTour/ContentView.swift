import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    NavigationLink(destination: SchoolSelect()) {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                                    }
                    Text("College Tour")
                        .font(.title)
                        .padding()
                        .foregroundColor(.blue)
                    
                    NavigationLink(destination: SchoolSelect()) {
                            Image(systemName: "circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                                    }
                }
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
