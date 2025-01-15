FROM python
WORKDIR /path
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /path/
EXPOSE 5000
CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]