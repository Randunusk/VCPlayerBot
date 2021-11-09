echo "😇මං හැදෙන ගමන්...."
if [ -z $BRANCH ]
then
  echo "😐පොඩ්ඩක් හිටහම්...."
  git clone https://github.com/subinps/VCPlayerBot /VCPlayerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/subinps/VCPlayerBot -b $BRANCH /VCPlayerBot
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "✅මං වැඩ බං...."
python3 main.py
