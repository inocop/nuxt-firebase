## nuxt-firebase

### Created project

#### nuxt

```shell
[docker]$ npx create-nuxt-app
> Generating Nuxt.js project in /var/src/nuxt_app
? Project name nuxt_app
? Project description My doozie Nuxt.js project
? Use a custom server framework none
? Use a custom UI framework none
? Choose rendering mode Single Page App
? Use axios module yes
? Use eslint yes
? Use prettier no
? Author name inocop
? Choose a package manager npm
```

#### firebase

Create firebase project & Create firestore database  
https://console.firebase.google.com


```shell
[docker]$ firebase login
[docker]$ firebase init
? Which Firebase CLI features do you want to setup for this folder? Press Space to select features, then Enter to confirm your choices.
 ◯ Database: Deploy Firebase Realtime Database Rules
 ◉ Firestore: Deploy rules and create indexes for Firestore
 ◉ Functions: Configure and deploy Cloud Functions
 ◉ Hosting: Configure and deploy Firebase Hosting sites
 ◉ Storage: Deploy Cloud Storage security rules

=== Project Setup

? Select a default Firebase project for this directory: {{ your project_id }}

=== Firestore Setup

? What file should be used for Firestore Rules? (firestore.rules)
? What file should be used for Firestore indexes? (firestore.indexes.json)
? What language would you like to use to write Cloud Functions? JavaScript
? Do you want to use ESLint to catch probable bugs and enforce style? Yes
? Do you want to install dependencies with npm now? Yes
? What do you want to use as your public directory? nuxt_app/dist
? Configure as a single-page app (rewrite all urls to /index.html)? Yes
? What file should be used for Storage Rules? storage.rules
```

### Docker exec

```shell
[host]$ docker exec -it nuxt-firebase_node_1 sh
```

### Setup

```shell
[host]$ git clone https://github.com/inocop/nuxt-firebase.git
[host]$ docker-compose up -d
[host]$ docker exec -it nuxt-firebase_node_1 sh
[docker]$ cd /var/src/nuxt_app  && npm install
[docker]$ cd /var/src/functions && npm install
[docker]$ firebase login
[docker]$ firebase use --add
? Which project do you want to add? {{ your project_id }}
? What alias do you want to use for this project? (e.g. staging) default
```

### Develop

```shell
[docker]$ cd /var/src/nuxt_app
[docker]$ npm run dev
```

http://localhost:5005

### Deploy

```shell
[docker]$ cd /var/src/nuxt_app
[docker]$ npm run build
[docker]$ firebase deploy
```
