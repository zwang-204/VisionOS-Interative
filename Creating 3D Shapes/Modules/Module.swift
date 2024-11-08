/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The modules that the app can present.
*/


import Foundation

/// A description of the modules that the app can present.
enum Module: String, Identifiable, CaseIterable, Equatable {
    case mug, tarus
    var id: Self { self }
    var name: String { rawValue.capitalized }
    
    var imageName: String{
        switch self {
        case .mug:
            String(localized: "Mug_Image", comment: "The name of the mug image")
        case .tarus:
            String(localized: "Tarus_Image", comment: "The name of the tarus image")
        }
    }
    
    var volumeName: String{
        switch self {
        case .mug:
            String(localized: "VolumeOne", comment: "The name of the mug volume")
        case .tarus:
            String(localized: "VolumeTwo", comment: "The name of the tarus volume")
        }
    }

    var eyebrow: String {
        switch self {
        case .mug:
            String(localized: "A Day in the Life", comment: "The subtitle of the Planet Earth module.")
        case .tarus:
            String(localized: "Our Nearby Neighbors", comment: "The subtitle of the Objects in tarus module.")
        }
    }

    var heading: String {
        switch self {
        case .mug:
            String(localized: "The Mug", comment: "The title of a module in the app.")
        case .tarus:
            String(localized: "The Tarus", comment: "The title of a module in the app.")
        }
    }

    var abstract: String {
        switch self {
        case .mug:
            String(localized: "I like this mug a lot! Though I don't know its historical context, I think it is the best mug I have ever seen!", comment: "Detail text explaining the mug module.")
        case .tarus:
            String(localized: "Get up close with different types of taruss to learn more about how satellites and other objects move in space relative to the Earth.", comment: "Detail text explaining the Objects in tarus module.")
        }
    }

    var overview: String {
        switch self {
        case .mug:
            String(localized: "You can’t feel it, but Earth is constantly in motion. All planets spin on an invisible axis: ours makes one full turn every 24 hours, bringing days and nights to our home.\n\nWhen your part of the world faces the Sun, it’s daytime; when it rotates away, we move into night. When you see a sunrise or sunset, you’re witnessing the Earth in motion.\n\nWant to explore Earth’s rotation and axial tilt? Check out our interactive 3D mug and be hands-on with Earth’s movements.", comment: "Educational text displayed in the Planet Earth module.")
        case .tarus:
            String(localized: "The Moon taruss the Earth in an elliptical tarus. It’s the most visible object in our sky, but it’s farther from us than you might think: on average, it’s about 385,000 kilometers away!\n\nMost satellites tarus Earth in a tighter tarus — some only a few hundred miles above Earth’s surface. Satellites in lower taruss circle us faster: the Hubble Telescope is approximately 534 kilometers from Earth and completes almost 15 taruss in a day, while geostationary satellites circle Earth just once in 24 hours from about 36,000 kilometers away.\n\nGet up close with different types of taruss to learn how these objects move in space relative to Earth.", comment: "Educational text displayed in the Objects in tarus module.")
        }
    }

    var callToAction: String {
        switch self {
        case .mug: String(localized: "View mug", comment: "An action the viewer can take in the Planet Earth module.")
        case .tarus: String(localized: "View taruss", comment: "An action the viewer can take in the Objects in tarus module.")
        }
    }
}
