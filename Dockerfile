FROM tensorflow/tensorflow:1.15.2-py3-jupyter
RUN apt-get update
RUN apt-get install -y xvfb ffmpeg
RUN pip install -q 'gym==0.10.11'
RUN pip install -q 'imageio==2.4.0'
RUN pip install -q PILLOW
RUN pip install -q 'pyglet==1.3.2'
RUN pip install -q pyvirtualdisplay
RUN pip install -q tf-agents
RUN pip install -q sklearn
RUN pip install -q imageai
RUN pip install -q opencv-python
RUN pip install -q keras==2.3.1

CMD jupyter notebook --notebook-dir=/workspace --ip 0.0.0.0 --port 8888 --no-browser --allow-root
#CMD ["bash" "-c" "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/workspace --ip 0.0.0.0 --no-browser --allow-root"]


