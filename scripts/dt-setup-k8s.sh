chmod 775 ~/perform-2023-mastering-dynatrace-configuration/easytrade 
cd ~/perform-2023-mastering-dynatrace-configuration/easytrade 
cp -f ~/deploy/easytrade/manifests/pricingservice.yaml pricingservice.yamlv1
awk 'NR<=28 {print}' pricingservice.yamlv1 > pricingservice.yamlv2
cat pricingservice.yamlv2partial >> pricingservice.yamlv2
awk 'NR>28 {print}' pricingservice.yamlv1 >> pricingservice.yamlv2
awk 'NR<=9 {print}' pricingservice.yamlv2 > pricingservice.yamlv3
cat pricingservice.yamlv3partial >> pricingservice.yamlv3
awk 'NR>9 {print}' pricingservice.yamlv2 >> pricingservice.yamlv3
awk 'NR<=31 {print}' pricingservice.yamlv3 > pricingservice.yamlv4
cat pricingservice.yamlv4partial >> pricingservice.yamlv4
awk 'NR>31 {print}' pricingservice.yamlv3 >> pricingservice.yamlv4
echo "Setup has completed."