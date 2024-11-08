/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
An extension of the app's main view that creates entities with geometries.
*/

import RealityKit
import RealityKitContent

extension VolumeViewOne {
    /// The white material that responds to lighting.
    static let whiteMaterial = SimpleMaterial(color: .white, isMetallic: false)

    /// The entity with a box geometry.
    static let boxEntity: Entity = {
        // Create a new entity instance.
        let entity = Entity()

        // Create a new mesh resource.
        let boxSize: Float = 0.1
        let boxMesh = MeshResource.generateBox(size: boxSize)

        // Add the mesh resource to a model component, and add it to the entity.
        entity.components.set(ModelComponent(mesh: boxMesh, materials: [whiteMaterial]))

        return entity
    }()

    /// The entity with a rounded box geometry.
    static let roundedBoxEntity: Entity = {
        // Create a new entity instance.
        let entity = Entity()

        // Create a new mesh resource.
        let boxSize: Float = 0.1
        let boxCornerRadius: Float = 0.03
        let roundedBoxMesh = MeshResource.generateBox(size: boxSize, cornerRadius: boxCornerRadius)

        // Add the mesh resource to a model component, and add it to the entity.
        entity.components.set(ModelComponent(mesh: roundedBoxMesh, materials: [whiteMaterial]))

        return entity
    }()

    /// The entity with a spherical geometry.
    static let sphereEntity: Entity = {
        // Create a new entity instance.
        let entity = Entity()

        // Create a new mesh resource.
        let sphereRadius: Float = 0.05
        let boxMesh = MeshResource.generateSphere(radius: sphereRadius)

        // Add the mesh resource to a model component, and add it to the entity.
        entity.components.set(ModelComponent(mesh: boxMesh, materials: [whiteMaterial]))

        return entity
    }()

    /// The entity with a conical geometry.
    static let coneEntity: Entity = {
        // Create a new entity instance.
        let entity = Entity()

        // Create a new mesh resource.
        let coneHeight: Float = 0.1
        let coneRadius: Float = 0.05
        let roundedBoxMesh = MeshResource.generateCone(height: coneHeight, radius: coneRadius)

        // Add the mesh resource to a model component, and add it to the entity.
        entity.components.set(ModelComponent(mesh: roundedBoxMesh, materials: [whiteMaterial]))

        return entity
    }()

    /// The entity with a cylindrical geometry.
    static let cylinderEntity: Entity = {
        // Create a new entity instance.
        let entity = Entity()

        // Create a new mesh resource.
        let cylinderHeight: Float = 0.1
        let cylinderRadius: Float = 0.05
        let roundedBoxMesh = MeshResource.generateCylinder(height: cylinderHeight, radius: cylinderRadius)

        // Add the mesh resource to a model component, and add it to the entity.
        entity.components.set(ModelComponent(mesh: roundedBoxMesh, materials: [whiteMaterial]))
        
        return entity
    }()
    
    static let bunnyEntity: Entity = {
        // Create a new entity instance.
        guard let entity = try? Entity.load(named: "bunny") else {
                fatalError("Unable to load the bunny model")
            }
        entity.setOrientation(simd_quatf.init(angle: 90, axis: SIMD3(x: 1, y: 0, z: 0)), relativeTo: entity)
        
        return entity
    }()
    
    static let mugEntity: Entity = {
        // Create a new entity instance.
        guard let entity = try? Entity.load(named: "Mug") else {
                fatalError("Unable to load the mug model")
            }
        entity.setOrientation(simd_quatf.init(angle: 0, axis: SIMD3(x: 1, y: 0, z: 0)), relativeTo: entity)
        
        return entity
    }()
    
    static let tarusEntity: Entity = {
        // Create a new entity instance.
        guard let entity = try? Entity.load(named: "Tarus") else {
                fatalError("Unable to load the tarus model")
            }
        entity.setOrientation(simd_quatf.init(angle: 0, axis: SIMD3(x: 1, y: 0, z: 0)), relativeTo: entity)
        
        return entity
    }()
}
