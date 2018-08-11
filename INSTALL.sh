sudo apt-get upgrade
sudo apt-get update
sudo apt-get install git
sudo apt-get install rofi
sudo apt-get install ranger
sudo apt-get install screenfetch

#   Libraries for i3-gaps
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
libstartup-notification0-dev libxcb-randr0-dev \
libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
autoconf libxcb-xrm0 libxcb-xrm-dev automake

# Installs i3-gaps
cd /usr/local/src/
sudo git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps/
sudo autoreconf --force --install
rm -rf build/
sudo mkdir build && cd build/
sudo ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
sudo make
sudo make install


