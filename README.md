Flutter Widget UI Components 

A Flutter project demonstrating **TextField input handling** and widget customization.  
This project shows both **Original** and **Modified** implementations using **Controller** and **onChanged** methods.

---

## Getting Started

This project serves as a starting point for exploring Flutter widgets and UI customization.

### Prerequisites
- Flutter SDK installed
- Android Studio / VS Code (with Flutter plugin)
- Connected device or emulator

---

## Key Features
- Basic Flutter app structure
- TextField input handling in two ways:
  1. **Using Controller**
  2. **Using onChanged callback**
- Real-time UI updates and state management

---

## Original vs Modified Output

### Original Output
![Original Output 1](OriginalCode_Screenshot/original (1).png)
![Original Output 2](OriginalCode_Screenshot/original (2).png)

### Modified Output

#### Modified (Using Controller)
- Uses `TextEditingController` to read TextField input.
- Value updated only when Submit button is pressed.
![Modified Using Controller](ModifiedCode_Screenshot/modified (Using Controller).png)

#### Modified (Using onChanged)
- Uses `onChanged` callback to update value as user types.
- Value is always in sync with TextField input.
![Modified Using onChanged](ModifiedCode_Screenshot/modified (Using onChanged).png)

---

## Resources

A few helpful resources to get you started with Flutter development:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [Flutter Documentation](https://flutter.dev/docs)

These links provide tutorials, samples, and API reference for mobile development with Flutter.

---

## How to Run

1. Clone the repository:
```bash
git clone <your-repo-url>
cd Flutter_Widget_UI_Components
