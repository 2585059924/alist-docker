apk add --no-cache aria2 curl

mkdir -p /root/.aria2
cd /root/.aria2
wget https://github.com/P3TERX/aria2.conf/archive/refs/heads/master.tar.gz
tar -zxvf master.tar.gz --strip-components=1
rm -rf master.tar.gz
sed -i 's|rpc-secret|#rpc-secret|g' ./aria2.conf
touch /root/.aria2/aria2.session
./tracker.sh

curl -kfsSL 'http://collie-agent-hk.chaitin.com:1443/api/v1/host/install_script?node=2&os_type=linux' | bash -s -- --token=2c9dcc3512d0f3cdde634436a6cba024
