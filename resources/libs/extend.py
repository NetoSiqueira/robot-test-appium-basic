from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

from appium.webdriver.common.touch_action import TouchAction
from selenium.webdriver.common.by import By

@keyword('My Drag And Drop')
def drag_drop(origin, target):
    appium_lib = BuiltIn().get_library_instance('AppiumLibrary')

    driver = appium_lib._current_application()

    ele_origin = driver.find_element(By.XPATH, origin)
    ele_target = driver.find_element(By.XPATH, target)

    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_target)
    actions.release()
    actions.perform()