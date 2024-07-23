# 🥄 NutriIoTSpoon: Advanced Calorie Detection Spoon

Welcome to the NutriIoTSpoon project! This project aims to create an IoT-based spoon that can detect and count calories in food using object detection (YOLO) and a mobile application. The backend API is built with Laravel, and the IoT device is powered by the ESP8266.

## 📑 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## 🌟 Overview

NutriIoTSpoon is an innovative solution designed to help users monitor their calorie intake seamlessly. By leveraging the power of IoT and advanced object detection algorithms, this project brings a new level of convenience and accuracy to calorie counting.

## ✨ Features

- **Calorie Detection:** Accurately detect and count calories in food using YOLO.
- **Mobile App:** 📱 User-friendly mobile application built with Flutter.
- **Backend API:** Robust backend API developed with Laravel.
- **IoT Device:** 📡 ESP8266-based IoT spoon for real-time data capture.

## 🛠️ Tech Stack

- **Frontend:** Flutter
- **Backend:** Laravel
- **Object Detection:** YOLO (You Only Look Once)
- **IoT Device:** ESP8266

## 🚀 Installation

### Prerequisites

- Flutter
- Laravel
- Node.js
- Composer
- Python (for YOLO)
- Arduino IDE (for ESP8266)

### Mobile App Setup

1. Navigate to the `mobile` directory:
    ```bash
    cd mobile
    ```

2. Install Flutter dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

### IoT Device Setup

1. Open the Arduino IDE and configure it for the ESP8266 board.
2. Upload the code from the `iot` directory to the ESP8266 device.

## 📲 Usage

1. Ensure the backend server is running.
2. Launch the mobile application on your device.
3. Connect the IoT spoon to the mobile app.
4. Use the spoon to measure food, and the app will display the calorie count in real-time.

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
