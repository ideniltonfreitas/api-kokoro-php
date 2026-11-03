FROM ghcr.io/remsky/kokoro-fastapi-cpu:v0.9.1

ENV PORT=10000
EXPOSE 10000

# Força o contêiner a otimizar a memória reduzindo threads extras no boot
ENV OMP_NUM_THREADS=1
ENV MKL_NUM_THREADS=1

CMD ["uvicorn", "api.src.main:app", "--host", "0.0.0.0", "--port", "10000", "--workers", "1"]
