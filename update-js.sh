# This file is part of the API Platform project.
#
# (c) Kévin Dunglas <dunglas@gmail.com>
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.

dest=Resources/public/swagger-ui/

npm install --production --loglevel=error swagger-ui
if [ -d $dest ]; then
  rm -Rf $dest
fi
mkdir -p $dest
cp -R node_modules/swagger-ui/dist/css $dest
cp -R node_modules/swagger-ui/dist/fonts $dest
cp -R node_modules/swagger-ui/dist/images $dest
cp -R node_modules/swagger-ui/dist/lang $dest
cp -R node_modules/swagger-ui/dist/lib $dest
cp -R node_modules/swagger-ui/dist/swagger-ui.min.js $dest
rm -Rf node_modules/
