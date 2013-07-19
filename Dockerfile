FROM centos

RUN yum install -y git
RUN yum install -y rubygems
RUN yum install -y vim
RUN yum install -y httpd

RUN gem install rake serverspec --no-ri --no-rdoc
RUN gem install puppet --no-ri --no-rdoc

ADD ./nsswitch.conf /etc/nsswitch.conf
ADD ./httpd.conf /httpd.conf

RUN git clone https://github.com/mizzy/docker-ci-demo.git

CMD /docker-ci-demo/test.sh

