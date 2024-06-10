FROM python:3.9-slim-buster
WORKDIR /Users/suraaj/Desktop/Flask_Tutorial/flask_working

COPY requirements.txt ./

RUN python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt


COPY . .

CMD ["python3", "-m", "flask", "--app", "Loan_app", "run", "--host=0.0.0.0"]









