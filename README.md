# 📰 News Cloud App

A modern and fast news application built with **Flutter**, designed to keep users updated with the latest global and local headlines. The app features a smooth user interface and allows users to filter news based on various categories.

---

## ✨ Features

* **Breaking News:** Get the latest articles and headlines instantly.
* **Category Filtering:** Browse news by specific interests.
* **Smooth UI:** Implemented using `CustomScrollView` and `Slivers` for a seamless scrolling experience.
* **Localization Support:** Fetches and displays news content in Arabic (configurable via API settings).
* **High Performance:** Efficient state management and optimized image caching.

---

## 📑 News Categories

The application covers a wide range of news sources covering the following topics:

* **Sports**
* **Technology**
* **Health**
* **Business**
* **Science**
* **Entertainment**

---

## 📸 App Gallery



![WhatsApp Image 2026-01-12 at 6 21 42 PM](https://github.com/user-attachments/assets/90acaff7-555a-42ac-9b08-c474942bc34c)
![WhatsApp Image 2026-01-12 at 6 21 43 PM](https://github.com/user-attachments/assets/420490a4-fa28-4d60-8620-943d30373d59)
![1](https://github.com/user-attachments/assets/8db15aef-500b-433a-b524-783a41232f11)
 


---

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev/) (Dart)
* **Networking:** [Dio Package](https://pub.dev/packages/dio) - For efficient API requests and error handling.
* **Asset Management:** [Flutter Gen Runner](https://pub.dev/packages/flutter_gen_runner) - For safe and auto-generated asset paths.
* **API Source:** [NewsAPI](https://newsapi.org/) - The primary data source for news articles.
* **Architecture:** Layered Architecture (Separation of Concerns):
    * `Services`: Handles API calls and data fetching.
    * `Models`: Data parsing and object mapping (using `factory` constructors).
    * `Widgets` & `Screens`: UI components and screen layouts.

---

## 🚀 Installation & Run

Follow these steps to set up the project locally:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/Abdo-Elkholy/news_app.git](https://github.com/Abdo-Elkholy/news_app.git)
    ```
2.  **Install dependencies:**
    Navigate to the project directory and run:
    ```bash
    flutter pub get
    ```
3.  **Run the App:**
    ```bash
    flutter run
    ```

---

## 📂 Project Structure

```text
lib/
├── models/          # Data models (ArticleModel, etc.)
├── services/        # API Handling (NewsServices)
├── screens/         # App Screens (HomeScreen, etc.)
├── widgets/         # Reusable UI Components
└── main.dart        # Application Entry Point
