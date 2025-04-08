# todo_app
### Prerequisites
- Git
- Docker and Docker Compose
- Python 3.8+
- Flutter SDK

### Backend Setup

1. Clone the repository:
   git clone https://github.com/jnas7102/todo_app.git
   cd todo_app
2. Start PostgreSQL using Docker:
   docker-compose up -d
3. Set up the Django backend:
   cd todo_backend
   python -m venv venv
   source venv/bin/activate  # On Windows:       
   venv\Scripts\activate
   pip install -r requirements.txt
   python manage.py migrate
   python manage.py runserver

4. The Django API will be available at:       
   http://localhost:8000/api/

### Frontend Setup

1. Navigate to the Flutter frontend:
   cd todo_frontend
2. Install dependencies:
   flutter pub get
3. Run the web app:
   flutter run -d chrome
4. The Flutter app will be available at:     
   http://localhost:54321 (port may vary)

## Features

- Create new todo items
- View all todos
- Mark todos as complete/incomplete
- Edit todo title and description
- Delete todos

## Technical Details

- Backend: Django REST Framework
- Frontend: Flutter Web
- Database: PostgreSQL
- Version Control: Git with feature branching
