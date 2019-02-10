FROM jfloff/alpine-python

LABEL "com.github.actions.name"="Python Syntax Checker"
LABEL "com.github.actions.description"="Run flake8 to find syntax errors in a Python repo."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

RUN pip install --upgrade pip
RUN pip install flake8 future github3.py

CMD ["flake8", "/github/workspace/", "--count", "--select=E901,E999,F821,F822,F823", "--show-source", "--statistics"]
