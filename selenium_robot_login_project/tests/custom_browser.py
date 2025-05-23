from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.firefox.options import Options

def open_custom_firefox(url):
    options = Options()
    options.binary_location = r"C:\Program Files\Mozilla Firefox\firefox.exe"

    service = Service(r"C:\Path\To\geckodriver.exe")
    driver = webdriver.Firefox(service=service, options=options)
    driver.get(url)
    return driver
