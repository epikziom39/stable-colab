cd /home
echo region "us, eu, au, ap, sa, jp, in"
read -p "region: " region
nohup ./ngrok tcp -region $region 7860 &>/dev/null &
cd stable-diffusion-webui
echo Your IP Address In "https://dashboard.ngrok.com/tunnels/agents"
bash webui.sh
echo sleep
sleep 43200
