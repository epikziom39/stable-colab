cd ..
cd ..
cd ..
echo region "us, eu, au, ap, sa, jp, in"
read -p "region: " region
nohup ./ngrok tcp -region $region 7860 &>/dev/null &
cd stable-diffusion-webui
echo Your IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
bash webui.sh
echo sleep
sleep 43200
