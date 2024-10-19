
npm run build --prod 
cd ..
echo "updating links to ensure that the pages can be easily served e.g. via gh pages"
sed -i 's/href="\//href=".\//g' docs/index.html 
sed -i 's/src="\//src=".\//g' docs/index.html
cp -r ./docs/_app/ ./docs/app/
sed -i 's/_app/app/g' docs/freedomWallets.html
sed -i 's/_app/app/g' docs/freedomTreasuries.html
#sed -i 's/_app/app/g' docs/freedomExchanges.html
#sed -i 's/_app/app/g' docs/freedomEnterprise.html
sed -i 's/_app/app/g' docs/freedomInvestments.html
sed -i 's/_app/app/g' docs/philosophy.html
sed -i 's/_app/app/g' docs/index.html
sed -i "s/timestampOfBuild/$(date +%s%N | cut -b1-13)/g" docs/philosophy.html
echo "ready for take off"