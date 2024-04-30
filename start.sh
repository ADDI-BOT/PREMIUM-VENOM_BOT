if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ADDI-BOT/PREMIUM-VENOM_BOT.git/PREMIUM-VENOM_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PREMIUM-VENOM_BOT
fi
cd /PREMIUM-VENOM_BOT
pip3 install -U -r requirements.txt
echo "Starting PREMIUM-VENOM_BOT...."
python3 bot.py
