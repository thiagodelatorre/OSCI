from selenium import webdriver

options = webdriver.ChromeOptions()

options.add_argument('headless')

options.add_argument('window-size=1200x600')

driver = webdriver.Chrome(chrome_options=options)

driver.get('http://christopher.su')
print driver.title
driver.get_screenshot_as_file('main-page.png')
