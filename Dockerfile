FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#CMD [ "python3", "./email/atf_email_parsing.py" ]
CMD [ "python3", "./ldap/atf_ldap.py" ]
