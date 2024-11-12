FROM quay.io/jupyter/tensorflow-notebook:cuda-2024-11-06
LABEL maintainer="Kyohei Atarashi <atarashi@i.kyoto-u.ac.jp>"

RUN pip install --no-cache-dir \
    openai \
    transformers \
    tensorflow-gnn \
    jax[cuda] \
    optax \
    flax \
    tensorboard \
    mlflow \
    seaborn \
    plotly \
    jupyterlab_code_formatter \
    black[jupyter] \
    isort \
    flake8 \
    mypy \
    pytest

CMD ["jupyterhub-singleuser", "--allow-root"]
