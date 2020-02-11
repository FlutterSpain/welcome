'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "a576ea18aa55528010407bdcba75b8e6",
"/manifest.json": "92475d5a36a3f6023ea65fea02241fae",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/assets/assets/images/alberto.png": "0a657a0b330eb09f8ade2a2933025430",
"/assets/assets/images/jaime.jpg": "e3325d4fbc6749bb415b6a1925de34f4",
"/assets/assets/images/icon_flutter_madrid.jpg": "6d24a7af179b87676b303449cb14355c",
"/assets/assets/images/blue_heart.flr": "3ac7174eb555181bcd3324a4aeb03b35",
"/assets/assets/images/logo.flr": "e0f625381b4f1314435cb58b8ef3d7de",
"/assets/assets/images/logo_madrid.png": "b096417d07e8c773bbf0bb04e2744f92",
"/assets/assets/images/icon_flutter_madrid.png": "80ac0623ed2d6ac7105e19577cc5293c",
"/assets/assets/fonts/ProductSans-Regular.ttf": "b61c0ab33a818a0162f3e868babcef4b",
"/assets/assets/fonts/ProductSans-Bold.ttf": "a19a7b108b2e3961fc855c6ea5a6546f",
"/assets/assets/fonts/ProductSans-Italic.ttf": "af05b47de35fd5a5960ad1e440a4c0c7",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3ca122272cfac33efb09d0717efde2fa",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d21f791b837673851dd14f7c132ef32e",
"/assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bdd8d75eb9e6832ccd3117e06c51f0d3",
"/assets/AssetManifest.json": "dda8bb90eddd6d9c51d0049b9a5d0ca6",
"/assets/LICENSE": "d977d049a44d78a4e7973c38151d8ce6",
"/assets/FontManifest.json": "711eee06c4467f64b6c5f280332181c7",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/main.dart.js": "11d2059e2ecd9cea1b6a18b16154810f"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
