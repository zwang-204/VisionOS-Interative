//
//  VolumeView.swift
//  Creating 3D Shapes
//
//  Created by 王梓同 on 10/28/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct VolumeViewOne: View {
    var body: some View {
        RealityView { content in
            addGeometryShapes(to: content)
        } update: { content in
            
        }
        .installGestures()
    }

    func addGeometryShapes(to content: RealityViewContent) {
        let allGeometryEntities = [
            ShapeViewOne.mugEntity
        ]

        // var xOffset: Float = -0.25
        let xOffset: Float = 0

        for entity in allGeometryEntities {
            entity.position.x = xOffset
            entity.scale = SIMD3<Float>(1, 1, 1)
            var collision = CollisionComponent(shapes: [.generateSphere(radius: 0.2)])
            collision.filter = CollisionFilter(group: [], mask: [])
            entity.components.set(collision)
            entity.components.set(InputTargetComponent())
            var component = GestureComponent()
            component.canDrag = true
            component.canScale = true
            component.canRotate = true
            entity.components.set(component)
            
            let target = AnchoringComponent.Target.plane(.horizontal,
                                                         classification: .any,
                                                         minimumBounds: SIMD2<Float>(100, 100)
                                     )
            let anchoringComponent = AnchoringComponent(target, trackingMode: .predicted)
            // entity.components.set(anchoringComponent)

            content.add(entity)

        }
    }
}

#Preview {
    VolumeViewOne()
}
