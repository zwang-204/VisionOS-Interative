import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openWindow) var openWindow
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Welcome to the 3D Interactive Gallery")
                    .font(.largeTitle)
                    .padding(50)
                ScrollView(.vertical){
                    VStack{
                        HStack{
                            // Button that navigates to ShapesView
                            NavigationLink{ ModuleCard(module: .mug) } label: {
                                HStack {
                                    Image(uiImage: UIImage(named: "Mug_Image")!)
                                        .resizable()
                                        .frame(width: 128, height: 128)
                                        .cornerRadius(25)
                                    Text("View this mug")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .cornerRadius(25)
                                }
                                .padding(20)
                            }

                            // Button that navigates to ShapesView
                            NavigationLink{ ModuleCard(module: .tarus) } label: {
                                HStack {
                                    Image(uiImage: UIImage(named: "Tarus_Image")!)
                                        .resizable()
                                        .frame(width: 128, height: 128)
                                        .cornerRadius(25)
                                    Text("View this tarus")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .cornerRadius(25)
                                }
                                .padding(20)
                            }.padding(20)
                        }
                    }
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
