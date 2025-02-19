# Flutter के लिए बेस इमेज
FROM cirrusci/flutter:latest

# वर्कस्पेस सेट करो
WORKDIR /app

# Flutter प्रोजेक्ट कॉपी करो
COPY . .

# सभी फाइल्स एक्सीक्यूटेबल बनाओ
RUN chmod +x *

# डिपेंडेंसी इंस्टॉल करो
RUN flutter pub get

# Python dependencies भी इंस्टॉल करो
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install --no-cache-dir -r requirements.txt

# डिफॉल्ट कमांड: Flutter + Python स्क्रिप्ट रन करो
CMD ["sh", "-c", "flutter build apk && python3 FLASH.py"]
