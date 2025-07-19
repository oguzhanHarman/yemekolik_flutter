import os
import requests

recipes = [
    'iskender kebap', 'menemen', 'mercimek çorbası', 'kuru fasulye', 'dolma',
    'spaghetti carbonara', 'margherita pizza', 'risotto ai funghi', 'lasagna', 'tiramisu',
    'tacos al pastor', 'guacamole', 'quesadilla', 'enchiladas', 'churros',
    'butter chicken', 'chana masala', 'palak paneer', 'biryani', 'samosa'
]

# assets/images klasörünü yoksa oluştur
os.makedirs('assets/images', exist_ok=True)

for name in recipes:
    query = name.replace(' ', '%20')
    url = f'https://source.unsplash.com/600x600/?{query}'
    r = requests.get(url)
    filename = name.replace(' ', '_') + '.jpg'
    path = os.path.join('assets/images', filename)
    with open(path, 'wb') as f:
        f.write(r.content)
    print(f'✔ Downloaded {filename}')
