FROM jupyter/tensorflow-notebook

RUN export PYDEVD_DISABLE_FILE_VALIDATION=1

USER $NB_UID

RUN pip install --upgrade pip && \
    fix-permissions "/home/${NB_USER}"

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./
