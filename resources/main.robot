*** Settings ***
Library  SeleniumLibrary

### Data ###
Resource  data/geraL.robot
Resource  data/registro.robot

### Shared ###
Resource  shared/setup_teardown.robot

### Pages ###
Resource  pages/form_page.robot
