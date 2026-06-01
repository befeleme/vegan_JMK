mkdir -p output/
# shop=health_food in 'Jihomoravsky kraj'
curl -A "RegionalVeganDataLoader (w_oczekiwaniu[at]interia.pl)" 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea%283600442311%29%2D%3E%2EsearchArea%3Bnwr%5B%22shop%22%3D%22health%5Ffood%22%5D%28area%2EsearchArea%29%3Bout%20geom%3B%0A' | grep -v timestamp_ | grep -v '"generator": "Overpass API' > ./output/health_food.json
sleep 100
# bulk_purchase=yes in 'Jihomoravsky kraj'
curl -A "RegionalVeganDataLoader (w_oczekiwaniu[at]interia.pl)" 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea%283600442311%29%2D%3E%2EsearchArea%3Bnwr%5B%22bulk%5Fpurchase%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bout%20geom%3B%0A' | grep -v timestamp_ | grep -v '"generator": "Overpass API' > ./output/bulk_purchase.json
sleep 100
# vegan=yes/only vegetarian=only in Jihomoravsky kraj
curl -A "RegionalVeganDataLoader (w_oczekiwaniu[at]interia.pl)" 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea%283600442311%29%2D%3E%2EsearchArea%3B%28nwr%5B%22diet%3Avegan%22%3D%22yes%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22diet%3Avegan%22%3D%22only%22%5D%28area%2EsearchArea%29%3Bnwr%5B%22diet%3Avegetarian%22%3D%22only%22%5D%28area%2EsearchArea%29%3B%29%3Bout%20geom%3B%0A' | grep -v timestamp_ | grep -v '"generator": "Overpass API' > ./output/source_data.json
