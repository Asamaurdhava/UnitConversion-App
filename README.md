# UnitConv

UnitConv is a SwiftUI-based iOS application designed as a comprehensive unit conversion tool, demonstrating modern iOS development practices with Swift's Foundation framework. The app provides seamless length unit conversions with real-time calculations, intuitive interface design, and precise measurement handling.

## Overview

**UnitConv** allows users to:
* Enter any numeric value for conversion
* Select from 5 different length units (Meters, Kilometers, Feet, Yards, Miles)
* Choose both input and output units independently
* Instantly view converted results with high precision
* Experience a clean, modern interface with visual unit representations

The app leverages SwiftUI's declarative syntax and Apple's robust `Measurement` API, ensuring accuracy while providing an exceptional user experience with responsive design and intuitive controls.

## Features

* **Comprehensive Unit Support:** Convert between Meters, Kilometers, Feet, Yards, and Miles with full bidirectional capability.
* **Real-Time Conversion:** Instant results as you type, powered by computed properties.
* **Precision Accuracy:** Uses Foundation's `Measurement` framework for scientifically accurate conversions.
* **Smart Input Handling:** Decimal keyboard with convenient "Done" toolbar button.
* **Visual Design:** Colorful SF Symbol icons representing each unit type for enhanced user experience.
* **Modern SwiftUI Architecture:** Utilizes `NavigationStack`, segmented pickers, and form-based layout.

## Screenshots

*Screenshots will be added here*

## Getting Started

This repository demonstrates advanced SwiftUI concepts including state management, computed properties, and Foundation framework integration. **The source code is provided for learning, portfolio demonstration, and educational purposes.**

### Prerequisites
- Xcode 13.0 or later
- iOS 15.0+
- Swift 5.5+

### Installation
1. Clone this repository
2. Open `UnitConv.xcodeproj` in Xcode
3. Build and run on your preferred device or simulator

## Usage

1. **Enter Value:** Input the measurement you want to convert using the decimal keypad.
2. **Select Input Unit:** Choose your starting unit from the segmented picker (Meters, KM, Feet, Yard, Miles).
3. **Select Output Unit:** Pick your desired conversion unit from the second segmented picker.
4. **View Results:** The converted value appears instantly in the "Computed output" section.

## Code Highlights

* **Advanced State Management:** Implements `@State` for reactive UI updates and `@FocusState` for keyboard management.
* **Computed Properties:** The `computedOutput` property demonstrates complex conditional logic with real-time calculations.
* **Foundation Integration:** Leverages `Measurement` and `UnitLength` classes for precise, standardized conversions.
* **Clean Architecture:** Well-structured SwiftUI views with proper separation of concerns.
* **Modern UI Components:** 
  - Segmented pickers for unit selection
  - Form-based layout with clear sections
  - Toolbar integration for enhanced UX
  - Visual branding with colorful SF Symbols

### Supported Conversions

The app supports all combinations between:
- **Meters** (m) - SI base unit
- **Kilometers** (km) - Metric system
- **Feet** (ft) - Imperial system  
- **Yards** (yd) - Imperial system
- **Miles** (mi) - Imperial system

## Technical Implementation

The core conversion logic utilizes Swift's `Measurement` framework, ensuring:
- **Accuracy:** Scientific precision in all calculations
- **Performance:** Efficient real-time computation
- **Maintainability:** Clean, readable code structure
- **Extensibility:** Easy to add new units or measurement types

## Acknowledgements

This project is based on Paul Hudson's 100 Days of SwiftUI course. All credit for the original concept, structure, and educational content goes to Paul Hudson and the Hacking with Swift community. This repository is intended solely for personal learning and demonstration.

## Author

**Vishesh Singh Rajput aka specstan**

## License & Usage

**Educational and Portfolio Use.**

This project is created for learning purposes and portfolio demonstration. The code showcases modern iOS development practices and SwiftUI implementation patterns. Feel free to study the implementation for educational purposes.

*"Bridging the Gap—One Unit at a Time."*

## Contributing

This project is maintained as a personal learning exercise and portfolio piece. While external contributions are not actively sought, feedback and suggestions are welcome for educational discussion.

**For queries about this implementation or SwiftUI development practices, please feel free to reach out through appropriate channels.**
