# Gain Calculator App

A Flutter application for calculating voltage gain in decibels (dB), specifically designed for electronic laboratory measurements. This app simplifies the process of calculating gain when working with voltage measurements, using the standard gain formula: `Gain(A) = 20 * log(V1/V2)` where V2 is fixed at 0.200V.

## Features

- Simple and intuitive user interface
- Real-time gain calculation in decibels
- Material Design 3.0 implementation
- Floating action button for quick calculations
- Input validation for voltage values
- Precision to 2 decimal places in results

## Installation Requirements

- Flutter SDK (latest stable version)
- Dart SDK (latest stable version)
- Android Studio or VS Code with Flutter extensions
- iOS/Android emulator or physical device for testing

## Getting Started

1. Clone the repository:
```bash
git clone https://github.com/yourusername/gain-calculator.git
```

2. Navigate to the project directory:
```bash
cd gain-calculator
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the application:
```bash
flutter run
```

## Usage

1. Launch the application
2. Enter the measured voltage (V1) in the input field
3. Press either the "Calculate Gain" button or the calculator FAB
4. View the calculated gain in dB

## Technical Details

The gain calculation uses the formula:
```
Gain(A) = 20 * log(V1/0.200)
```
Where:
- V1 is the input voltage
- 0.200V is the reference voltage (V2)
- Result is displayed in decibels (dB)

## Code Structure

- `MyApp`: Main application widget with Material theming
- `GainCalculator`: Stateful widget handling the calculator interface
- `_GainCalculatorState`: State management and calculation logic

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Background

This application was inspired by the need to simplify gain calculations during electronic laboratory work. It automates the calculation process, reducing the possibility of manual calculation errors and saving time during lab sessions.
