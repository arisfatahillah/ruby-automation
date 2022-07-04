# Automation in Web and Android apps 
Software Automation Testing Web using selenium and Android Apps using appium

## Installation
1. [Git](https://www.atlassian.com/git/tutorials/install-git)
2. [Ruby 2.5.5](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/install_language_runtime.html)
3. Install chrome driver https://chromedriver.chromium.org/ choose based on your chrome in local ex: https://chromedriver.storage.googleapis.com/index.html?path=88.0.4324.96/ for google chrome 88
4. Gem install bundler
5. bundle install

## Read This Before you start!
1. On Android section please change device capability (device name) on folder features/android/helper/env.rb (change based on your device)
2. Change your login account on features/step_definitions/login_steps.rb. change variable @username_user and @password_user

## Running command
   Profile configuration : config/cucumber.yml

| Platform            | Command                                                |
|---------------------|------------------------------------------------------- |
| **Android Apps**    | `bundle exec cucumber -p android --tag @home-apps`     |
| **Web**             | `bundle exec cucumber -p web --tag @login`             |

## Folder Structure
For your convenient please put the file based on the folder structure.

```
|features
|--Android
│   ├── helper
│   │   └── env.rb
│   │   └── hook.rb
│   ├── page_object
│   ├── step_definitions
│   ├── scenario
|--Web
│   ├── helper
│   ├── page_object
│   ├── step_definitions
│   ├── scenario
```
