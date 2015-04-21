# wadoon/msml_tutorial
#


FROM wadoon/msml_tutorial:2015.04.21

MAINTAINER Alexander Weigl <Alexander.Weigl@student.kit.edu>

WORKDIR /home/msml
USER msml

CMD /usr/sbin/sshd -D


# TODO add tutorial files
