FROM geoscienceaustralia/sandbox

RUN mkdir -p /workspace

WORKDIR /workspace

COPY requirements.txt common_voice.py ./

RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "common_voice.py"]
