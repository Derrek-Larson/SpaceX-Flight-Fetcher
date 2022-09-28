# SpaceX-Flight-Fetcher

##Clone and build
- Run app after cloning, no pods or other setup should be required.
## Short Summary
In order to showcase ability with multiple frameworks and patterns, this app is not entirely consistent.
For example, the ImageFetcher struct showcases static func useage while I could have put that logic in the viewmodel of the list viewcontroller.
 - this choice would be good if the imageFetcher would be used elsewhere for other UIImageView(s).
 
 Data model all adheres to the Codeable protocol, this was auto-generated due to time constraints but most of my networking experience takes advantage
of the Codable protocol and I'm very comfortable creating or modifying Codable classes. Auto-generation tools are used in my current position for large data model changes!

Combine is used to reactively respond to the API request and refresh the tableview - the CurrentValueSubject also serves as a data store in the ViewModel.

Images are cached if not found in the ViewModel's dictionary.
- dictionary was chosen for fast search times, and because the Flight's flight number uniquely identifies it.

## Test Devices/Sims Used:
- iPad Pro iOS 16 (9.7") (portrait single column, landscape 2 column)
- iPhone 12 Pro Max iOS 16(portrait single column, landscape 2 column)
- iPhone 8 iOS 16(portrait single column, landscape single column)
## Wish I Could Have:
- ActivityIndicator for TableView load. Attempted to implement, but would not appear. I believe there is a conflict with the SplitViewController, although I couldn't find details online in a timely fashion. When the ActivityIndicator isHidden was checked in the SB I observed that the SplitViewController wouldn't respect .compact portrait mode.

- Style. I've left the app plain to achieve MVP in a timely fashion.
