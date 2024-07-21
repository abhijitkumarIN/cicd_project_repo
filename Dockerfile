FROM python:3.11
WORKDIR app
copy . .
RUN pip install -r requirements.txt 
RUN python cicd_project/manage.py makemigrations 
RUN python cicd_project/manage.py migrate
EXPOSE 8000
CMD ['python' , 'cicd_project/manage.py','runserver','0.0.0.0:8000']

