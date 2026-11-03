FROM ghcr.io/remsky/kokoro-fastapi-cpu:v0.9.2

ENV PORT=10000
EXPOSE 10000

CMD ["uvicorn", "api.src.main:app", "--host", "0.0.0.0", "--port", "10000"]
