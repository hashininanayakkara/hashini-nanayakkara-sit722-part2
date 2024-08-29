FROM python:3.9-slim

WORKDIR /hashini-nanayakkara-sit722-part2

COPY book_catalog/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

ENV NAME World

CMD ["python", "book_catalog/main.py"]
