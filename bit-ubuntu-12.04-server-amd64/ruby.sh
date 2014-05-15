apt-get -y install libyaml-0-2
RUBY_VERSION=1.9.3-p545

cd /tmp

wget http://mirror.bit.edu.cn/gentoo/distfiles/ruby-$RUBY_VERSION.tar.bz2
tar xvjf ruby-$RUBY_VERSION.tar.bz2
cd ruby-$RUBY_VERSION
./configure --prefix=/opt/ruby
make
make install
cd ..
rm -rf ruby-$RUBY_VERSION
rm ruby-$RUBY_VERSION.tar.bz2

RUBYGEMS_VERSION=2.0.14
wget http://mirror.bit.edu.cn/gentoo/distfiles/rubygems-$RUBYGEMS_VERSION.tgz
tar xzf rubygems-$RUBYGEMS_VERSION.tgz
cd rubygems-$RUBYGEMS_VERSION
/opt/ruby/bin/ruby setup.rb
cd ..
rm -rf rubygems-$RUBYGEMS_VERSION
rm rubygems-$RUBYGEMS_VERSION.tgz

echo 'PATH=$PATH:/opt/ruby/bin/' > /etc/profile.d/vagrantruby.sh
