# Используем официальный образ Python
FROM python:3.12.3-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install -r requirements.txt

EXPOSE 5000

# Копируем остальные файлы
COPY . .

# Команда для запуска приложения
CMD ["python", "main.py"]
