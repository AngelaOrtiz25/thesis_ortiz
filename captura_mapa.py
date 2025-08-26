# EJECUTA ESTE CÓDIGO POR SEPARADO en la consola de Python antes de renderizar
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time
import os

# Configurar Chrome
options = Options()
options.add_argument('--headless')
options.add_argument('--disable-gpu')
options.add_argument('--window-size=1200,800')

# Iniciar navegador
driver = webdriver.Chrome(options=options)

# Abrir el mapa HTML
html_path = os.path.abspath("mapa_chiapas.html")
driver.get(f"file:///{html_path}")

# Esperar a que cargue
time.sleep(3)

# Tomar captura
driver.save_screenshot("mapa.png")

# Cerrar navegador
driver.quit()

print("Captura guardada como mapa.png")