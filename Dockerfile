FROM ubuntu:22.04
LABEL maintainer="xiaqiulei" email="xiaqiulei@126.com"

################################################################################################################################################################
# 1. 系统更新、相关工具安装与设置
################################################################################################################################################################

# 设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone

# 设置环境变量
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en

# 安装必要的工具
RUN apt update -y && apt install -y zip unzip curl wget


# add new user
RUN useradd -m -s /bin/bash leon
USER leon
WORKDIR /home/leon

# 安装nodejs
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
RUN bash -c "source /home/leon/.nvm/nvm.sh && nvm install 22 && nvm use 22 "