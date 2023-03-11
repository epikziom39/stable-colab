cd /home
echo region "us, eu, au, ap, sa, jp, in"
read -p "region: " region
nohup ./ngrok tcp -region $region 7860 &>/dev/null &
cd /home/stable-diffusion-webui
echo Your IP Address In "https://dashboard.ngrok.com/tunnels/agents"
adduser stable
su stable
bash webui.sh
echo sleep
sleep 43200
