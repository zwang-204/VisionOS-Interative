import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to the 3D Shapes App")
                    .font(.largeTitle)
                    .padding()

                // Button that navigates to ShapesView
                NavigationLink(destination: ShapeViewOne()) {
                    Text("Show 3D Shapes")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(10)
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
            ShapeViewOne.boxEntity,
            ShapeViewOne.roundedBoxEntity,
            ShapeViewOne.sphereEntity,
            ShapeViewOne.coneEntity,
            ShapeViewOne.cylinderEntity,
            ShapeViewOne.bunnyEntity
        ]

        var xOffset: Float = -0.25

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

            xOffset += 0.125
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
