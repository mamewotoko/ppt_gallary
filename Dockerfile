FROM libreoffice/online:master

RUN apt-get update
RUN apt-get install unoconv -y
RUN apt-get install gv imagemagick -y
ADD fonts.txt /root
RUN cat /root/fonts.txt | xargs -P1 apt-get install -y 

RUN useradd -m user
ADD to_png.sh /home/user
RUN mkdir /home/user/work
WORKDIR /home/user/work
USER user
