import yaml
import argparse

parser = argparse.ArgumentParser()
# Adding optional argument
parser.add_argument("-e", "--env", default='production')

# Read arguments from command line
environment = parser.parse_args().env
# Version
with open("config.yaml", "r") as yamlFile:
    yamlMap = yaml.load(yamlFile, Loader=yaml.FullLoader)
yamlFile.close()

for key in yamlMap:
    if key == 'version':
        version = yamlMap[key].rsplit('.', 1)
        version[1] = '.' + environment
        version = ''.join(version)
        yamlMap[key] = version

with open("config.yaml", "w") as yamlFile:
    yaml.dump(yamlMap, yamlFile)
yamlFile.close()
