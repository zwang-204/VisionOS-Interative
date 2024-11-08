/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The app's main entry point.
*/

import SwiftUI
import RealityKitContent

@main
struct EntryPoint: App {
    
    init() {
        RealityKitContent.GestureComponent.registerComponent()
    }
    
    var body: some Scene {
        WindowGroup{
            ContentView()
        }
        
        WindowGroup(id: "VolumeOne"){
            VolumeViewOne()
        }.windowStyle(.volumetric)
        
        WindowGroup(id: "VolumeTwo"){
            VolumeViewTwo()
        }.windowStyle(.volumetric)
        
    }
}
