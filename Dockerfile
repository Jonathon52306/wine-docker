FROM jonathan52306/unminimized:18.04
RUN sed -i 's/http:\/\/security.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources.list \
    && sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources.list \
    && wget https://cpv2.mairuan.com/crossoverchina.com/trial/Linux/crossover-20.deb \
    && apt update && apt install desktop-file-utils gir1.2-vte-2.91 gir1.2-pango-1.0 gir1.2-gdkpixbuf-2.0 gir1.2-gtk-3.0 perl lib32z1 libc6-i386 -y \
    && dpkg -i crossover-20.deb \
    && apt update && apt install xfce4 xfce4-terminal screen  xrdp -y \
    && echo "xfce4-session">>~/.xsession \
    && wget https://getfrp.sh/d/frpc_linux_amd64 \
    && mv frpc_linux_amd64 /usr/local/bin/frpc \
    && chmod +x /usr/local/bin/frpc 
WORKDIR /root/
