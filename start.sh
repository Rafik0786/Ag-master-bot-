if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/1238muj/Ag-master-bot-.git /Ag-master-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ag-master-bot
cd /Ag-master-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
