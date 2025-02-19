FROM python:3.10

# वर्कस्पेस सेट करो
WORKDIR /app

# कोड और dependencies कॉपी करो
COPY . /app

# Python dependencies इंस्टॉल करो
RUN pip install --no-cache-dir -r requirements.txt

# सभी फाइल्स एक्सीक्यूटेबल बनाओ
RUN chmod +x *

# डिफॉल्ट कमांड सेट करो
CMD ["python3", "FLASH.py"]
