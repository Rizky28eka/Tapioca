# Tapioca

**Slogan**: Tapioca - Chat with Flavor!

## Description
Tapioca is a real-time messaging application designed for fun and secure communication. Built with Flutter for the front-end and Node.js with Express.js for the back-end, Tapioca offers real-time messaging, multimedia sharing, and customizable profiles, all with robust security through end-to-end encryption. The app uses MongoDB and PostgreSQL for data storage, while Cloudinary handles media storage. Tapioca also provides privacy controls and many more features to enhance the user experience.

## Features
- **User Authentication**: Email/password, Google/Facebook login, 2FA.
- **One-on-One & Group Chat**: Real-time messaging, group management.
- **Multimedia Sharing**: Share images, videos, files, and audio messages.
- **Message Status**: Seen, delivered, and typing indicators.
- **Customization**: Dark mode, custom chat backgrounds, profile customization.
- **Voice & Video Calls**: Built-in voice and video call features.
- **End-to-End Encryption**: Secure your conversations.
- **Notifications**: Push notifications for new messages.
- **Advanced Features**: Message reactions, editing, deleting, scheduling, and pinning.

## Tech Stack
- **Front-end**: Flutter
- **Back-end**: Node.js, Express.js
- **Database**: MongoDB (NoSQL) & PostgreSQL (SQL)
- **Media Storage**: Cloudinary
- **Real-Time Communication**: Socket.IO
- **Authentication**: JWT, Firebase (for social login)

## Installation

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Node.js](https://nodejs.org/)
- [MongoDB](https://www.mongodb.com/) & [PostgreSQL](https://www.postgresql.org/)
- [Cloudinary](https://cloudinary.com/)
- [Socket.IO](https://socket.io/)

### Steps
1. **Clone the repository**:
    ```bash
    git clone https://github.com/username/Tapioca.git
    cd Tapioca
    ```

2. **Backend setup**:
    ```bash
    cd backend
    npm install
    ```

    Create a `.env` file and configure the environment variables:
    ```bash
    MONGODB_URI=<Your MongoDB URI>
    POSTGRES_URI=<Your PostgreSQL URI>
    CLOUDINARY_CLOUD_NAME=<Your Cloudinary Cloud Name>
    CLOUDINARY_API_KEY=<Your Cloudinary API Key>
    CLOUDINARY_API_SECRET=<Your Cloudinary API Secret>
    JWT_SECRET=<Your JWT Secret>
    ```

    Start the server:
    ```bash
    npm start
    ```

3. **Frontend setup**:
    ```bash
    cd frontend
    flutter pub get
    flutter run
    ```

4. **Database setup**:
    Ensure MongoDB and PostgreSQL are running locally or are accessible via URI.

## Contributions
Contributions are welcome! Feel free to submit issues or pull requests.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
