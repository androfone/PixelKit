# Pixel

<!-- Header Logo -->

<!--
<div align="center">
   <img width="600px" src="./Sources/MyLibraryName/MyLibraryName.docc/Resources/Images/banner-logo.png" alt="Banner Logo">
</div>

 -->


<!-- Badges -->

<p>

  [![Swift Version Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FCypherPoet%2FMyLibraryName%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/CypherPoet/MyLibraryName)

  [![Swift Platform Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FCypherPoet%2FMyLibraryName%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/CypherPoet/MyLibraryName)

</p>


<p>
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <img src="https://github.com/androfone/Pixel" />
    <a href="https://github.com/apple/swift-package-manager">
      <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" />
    </a>
</p>


<p align="center">

_[ A brief synopsis of this library ]._

</p>


## Installation

### Xcode Projects

Select `File` -> `Swift Packages` -> `Add Package Dependency` and enter `https://github.com/androfone/Pixel`.

### Example



```swift
import SwiftUI
import Pixel

struct ContentView: View {
    @State private var isRefreshing: Bool = false

    var body: some View {
        VStack {
            Text("Bem-vindo ao PixelKit!")
                .font(.largeTitle)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5) 

            Button(action: {
                
                isRefreshing.toggle()
                PixelKit.stylishRefreshable(isRefreshing: &isRefreshing, color: .blue, size: 30)
            }) {
                Text("Refresh")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .border(Color.gray, width: 2)
            }
            .padding()
        }
        .padding()
        .stylishRefreshable(isRefreshing: $isRefreshing, color: .blue, size: 30)
    }
}
```



## Steps 

- [ ] Add in your Swift Editor
