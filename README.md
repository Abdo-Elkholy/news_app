# 📰 News Cloud App

News application built with **Flutter**, it keeps users updated with the latest global and local headlines. The app features a smooth user interface and allows users to filter news based on various categories.

---

## ✨ Features

* **Breaking News:** Get the latest articles and headlines instantly.
* **Category Filtering:** Browse news by specific interests (Sports, Technology, Health, Science, etc.).
* **Smooth UI:** Implemented using `CustomScrollView` and `Slivers` for a seamless scrolling experience.
* **Localization Support:** Fetches and displays news content in Arabic (configurable via API settings).
* **High Performance:** Efficient state management and optimized image caching.

---

## 📸 News Categories

The application covers a wide range of news sources categorized as follows:

| **Sports** | **Technology** | **Health** |
|:---:|:---:|:---:|
| ![Sports](assets/sports.avif) | ![Technology](assets/technology.jpeg) | ![Health](assets/health.avif) |
| **Business** | **Science** | **Entertainment** |
| ![Business](assets/business.avif) | ![Science](assets/science.avif) | ![Entertainment](assets/entertaiment.avif) |

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
