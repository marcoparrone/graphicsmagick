FROM fedora

RUN dnf install -y GraphicsMagick

CMD [ "gm" ]
