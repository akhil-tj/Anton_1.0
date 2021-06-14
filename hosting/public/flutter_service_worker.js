'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "794b90fb69a111da4d9ee759bc91161f",
"assets/FontManifest.json": "b5d1413404802ef7b76ac86009900c43",
"assets/fonts/FiraCode-Bold.ttf": "4fca5874504b7e1ef937f138b96a137e",
"assets/fonts/FiraCode-Light.ttf": "16cfbc94a37eee37fc38930a0ee6d3d1",
"assets/fonts/FiraCode-Medium.ttf": "199a7bd6ec05cc0838b1cffa21158b14",
"assets/fonts/FiraCode-Regular.ttf": "dc34dd991980e8155dd1f146b0f7cd6d",
"assets/fonts/FiraCode-SemiBold.ttf": "d98c7b35a8b2ea0cc7bbccd7468ea404",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/images/about_me_image.jpg": "292c728ba8cf566921c7880d9cc06725",
"assets/images/anton_mock.jpg": "c63324e1db704f38ac72d00f0849c559",
"assets/images/behance.svg": "b31fffb6cf135af8bc9737c166df8685",
"assets/images/ctracker.jpg": "71129fca06fcc5d5095362d487fe8cff",
"assets/images/github.svg": "4a37f7b8eed592482b16d7d941611a12",
"assets/images/Group%2520310.png": "be60e275b9282414bae77738e1e08308",
"assets/images/Group%252046.png": "aa20547f90aa8681eb40996c31272367",
"assets/images/instagram.svg": "a55f97131269559eaca2c654035f0151",
"assets/images/Latest%2520Group%2520310.png": "8fd27584f7372b7aae4aa096d164f426",
"assets/images/lf30_editor_i75chpdj.json": "fa95a518a4eed2a1f5765d9af7cb6230",
"assets/images/Line%25201.png": "a12fbe3298b189a0261ec58ff2c49f3a",
"assets/images/Line%25201.svg": "3ef5b430ec940362bb25c16d222a1698",
"assets/images/Line%25202.png": "a12fbe3298b189a0261ec58ff2c49f3a",
"assets/images/Line%25202.svg": "3ef5b430ec940362bb25c16d222a1698",
"assets/images/linkedin.svg": "c94ff217221195cbe4b69c8cc516c2a7",
"assets/images/livangle.jpg": "e81f243659a7311c7e5b48aa4329e797",
"assets/images/livangle_new.jpg": "5f979098d0dd83ed767dab9326ea434d",
"assets/images/New%2520Group%2520310.png": "26aa85b679b63948fc88d018c54c8056",
"assets/images/qnet_new2.jpg": "e31ec4775b3c97b0031e593692cbc68e",
"assets/images/random.jpg": "ab0a9f937f35c5b0cf2034653c5ca8b4",
"assets/images/random_new.jpg": "4b46ade76b4932694435640f2a692868",
"assets/images/Rectangle%252016.jpg": "9341457bc016cd5c152ca5b3996e4076",
"assets/images/Rectangle%252017.jpg": "1e2f77b77e2d1a4733e05ca3a4c9d12c",
"assets/images/Rectangle%252018.jpg": "d716378384f772a205374393d8421d26",
"assets/images/Rectangle%252020.jpg": "ccc61b9c15b2a62b1460b7f031c97775",
"assets/images/Rectangle%252023.jpg": "dc17c7238e8edeca8ab3e507ec371742",
"assets/images/Rectangle%252024.jpg": "704f8691b156ecee9ce8dcc804cd0938",
"assets/images/Rectangle%25206_page-0001.jpg": "f7bbde730c1b02aefbef53eb5570b039",
"assets/images/Skull.svg": "ea3b090f363a3ec6b66a8e07678d0fb9",
"assets/images/smartmockups_kpw73rn8.jpg": "43360db2c63404d09100de51abbf55c9",
"assets/images/ttclub_new.jpg": "14b4f1655458bac27d3b2383c4c02f40",
"assets/images/twitter.svg": "a7aecada520c8ec86da64929c99838dc",
"assets/NOTICES": "7a9b0b2f2f5058eb9c8a53f42c3e8503",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "b30697cf94189867a96412616a0469b9",
"/": "b30697cf94189867a96412616a0469b9",
"main.dart.js": "bf9471980facd5ceecd29c3347cf490b",
"manifest.json": "03e5a92ad3e1566c46df4a9e11940cfd",
"version.json": "ea0a03b7b3d8134055c4ffea334f8b74"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
