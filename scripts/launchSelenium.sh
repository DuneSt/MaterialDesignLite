#!/bin/bash

echo "============= Get Selenium ============="
wget http://selenium-release.storage.googleapis.com/3.3/selenium-server-standalone-3.3.1.jar

echo "============= Get Chrome driver for Selenium ============="
if [ "$(uname)" == "Darwin" ]; then
  wget https://chromedriver.storage.googleapis.com/2.28/chromedriver_mac64.zip
  unzip chromedriver_mac64.zip
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  wget https://chromedriver.storage.googleapis.com/2.28/chromedriver_linux64.zip
  unzip chromedriver_linux64.zip
fi


echo "============= Launch X ============="
export DISPLAY=:99.0
sh -e /etc/init.d/xvfb start

sleep 3 # give xvfb some time to start

echo "============= Launch Selenium ============="
java -Dwebdriver.chrome.driver=chromedriver -jar selenium-server-standalone-3.3.1.jar -port 4444 > /tmp/seleniumlog.&