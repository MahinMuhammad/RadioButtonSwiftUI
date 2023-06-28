# RadioButtonSwiftUI

RadioButtonSwiftUI is a custom radio button package for SwiftUI. It provides a simple and customizable radiobutton group view 
that is missing in the native SwiftUI framework. The package utilizes SF Symbols to represent the radio button states and 
offers options to customize the radiobutton appearance.

If you like the project, please do not forget to star ★ this repository and follow me on GitHub.

## Preview

<img src="/Graphics/RadioButtonDemo.png" height="400">

## Requirements

* iOS 13.0+
* Xcode 11.2+
* Swift 5.0
* SwiftUI framework

## Features

* Customizable radiobutton view for SwiftUI.
* Uses SF Symbols for radiobutton states.
* Supports toggling the radiobutton state.
* Optional customization of radiobutton color and title color.

## Installation

### **Swift Package Manager**

You can add RadioButtonSwiftUI as a dependency in your Swift Package Manager-enabled project. 
Follow these steps to integrate the package into your project:

1. In Xcode, go to "File" -> "Add Packages...".
2. Enter the URL of this repository: https://github.com/MahinMuhammad/RadioButtonSwiftUI
3. Choose the desired version rule.
4. Chosse the target where you want to add the package.
5. Click "Add Package".
6. Wait till Xcode varify and fetch it for you.
7. Click "Add Package".

## Usage

To use RadioButtonSwiftUI in your SwiftUI project, follow these steps:

1. Import the CheckBoxSwiftUI module:
```swift
import RadioButtonSwiftUI
```

2. Create a @State property to hold the selected state:
```swift
@State var selectedOption:String = "London"
```

3. Create a collection of items for radio button groups:
```swift
let fruits = ["Dhaka", "London", "Paris", "Tokyo", "Delhi"]
```

4. Use the 'RadioButtonGroup' view in your SwiftUI view hierarchy:
```swift
RadioButtonGroup(collectionOfItems: fruits, selectedOption: $selectedOption)
```

5. Customize the checkbox appearance by providing optional parameters:
```swift
RadioButtonGroup(collectionOfItems: fruits, selectedOption: $selectedOption, buttonColor: .pink, titleColor: .green)
```
## Integration into a complete but simple code:

```swift
import SwiftUI
import RadioButtonSwiftUI

struct TestView: View {
    @State var selectedOption:String = "London"
    let fruits = ["Dhaka", "London", "Paris", "Tokyo", "Delhi"]
    
    var body: some View {
        VStack{
            RadioButtonGroup(collectionOfItems: fruits, selectedOption: $selectedOption)
        }
    }
}
```

## Author

Md. Mahinur Rahman, iOS Developer

rahmanmahin@icloud.com

## Find Me on:

[FaceBook](https://web.facebook.com/mahin5muhammad)
[Instagram](https://www.instagram.com/mahin5muhammad/)
[LinkedIn](https://www.linkedin.com/in/rahmanmahin/)
[Twitter](https://twitter.com/ImMahin)
[Website](https://mahinmuhammad.github.io/view/home.html)
[Discord](http://discordapp.com/users/Ghost_Friday#2625)


## Contributing

Contributions to RadioButtonSwiftUI are welcome! If you encounter any issues or have ideas for improvements, 
please feel free to open an issue or submit a pull request.

## Feedback

Please feel free to open any [issue](https://github.com/MahinMuhammad/RadioButtonSwiftUI/issues)

## License

CheckBox-SwiftUI is available under the MIT License. See the LICENSE file for more information.
