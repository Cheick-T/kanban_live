From python:3.6.3
ENV PYTHONBUFFERED 1
RUN apt-get install -y git
WORKDIR /src
RUN git clone https://github.com/Cheick-T/kanban_system .
RUN pip install -U pip
RUN pip install --trusted-host pypy.org --trusted-host files.pythonhosted.org -r requirements.txt
RUN sed -i "s|from django.utils import six|import six|g" /usr/local/lib/python3.6/site-packages/mptt/models.py
RUN sed -i "s|from django.utils.six|from six|g" /usr/local/lib/python3.6/site-packages/mptt/utils.py