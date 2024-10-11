import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
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
                            NavigationLink(destination: ShapeViewOne()) {
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
                                
                            }.padding(20)
                            // Button that navigates to ShapesView
                            NavigationLink(destination: ShapeViewTwo()) {
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
                        HStack{
                            // Button that navigates to ShapesView
                            NavigationLink(destination: ShapeViewOne()) {
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
                                
                            }.padding(20)
                            // Button that navigates to ShapesView
                            NavigationLink(destination: ShapeViewTwo()) {
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
                        HStack{
                            // Button that navigates to ShapesView
                            NavigationLink(destination: ShapeViewOne()) {
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
                                
                            }.padding(20)
                            // Button that navigates to ShapesView
                            NavigationLink(destination: ShapeViewTwo()) {
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

struct ShapeViewOne: View {
    var body: some View {
        RealityView { content in
            addGeometryShapes(to: content)
        } update: { content in
            
        }
        .installGestures()
        .navigationTitle("3D Shapes") // Add a title for the navigation
    }

    func addGeometryShapes(to content: RealityViewContent) {
        let allGeometryEntities = [
            ShapeViewOne.mugEntity
        ]

        // var xOffset: Float = -0.25
        var xOffset: Float = 0

        for entity in allGeometryEntities {
            entity.position.x = xOffset
            var collision = CollisionComponent(shapes: [.generateSphere(radius: 0.2)])
            collision.filter = CollisionFilter(group: [], mask: [])
            entity.components.set(collision)
            entity.components.set(InputTargetComponent())
            var component = GestureComponent()
            component.canDrag = true
            component.canScale = true
            component.canRotate = true
            entity.components.set(component)

            content.add(entity)

        }
    }
}

struct ShapeViewTwo: View {
    var body: some View {
        RealityView { content in
            addGeometryShapes(to: content)
        } update: { content in
            
        }
        .installGestures()
        .navigationTitle("3D Shapes") // Add a title for the navigation
    }

    func addGeometryShapes(to content: RealityViewContent) {
        let allGeometryEntities = [
            ShapeViewOne.tarusEntity
        ]
        
        var xOffset: Float = 0
        
        for entity in allGeometryEntities {
            entity.position.x = xOffset
            var collision = CollisionComponent(shapes: [.generateSphere(radius: 0.2)])
            collision.filter = CollisionFilter(group: [], mask: [])
            entity.components.set(collision)
            entity.components.set(InputTargetComponent())
            var component = GestureComponent()
            component.canDrag = true
            component.canScale = true
            component.canRotate = true
            entity.components.set(component)

            content.add(entity)

        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
