'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "4e6598e429894cbd949bd1550bed832d",
"assets/FontManifest.json": "b5d1413404802ef7b76ac86009900c43",
"assets/fonts/FiraCode-Bold.ttf": "4fca5874504b7e1ef937f138b96a137e",
"assets/fonts/FiraCode-Light.ttf": "16cfbc94a37eee37fc38930a0ee6d3d1",
"assets/fonts/FiraCode-Medium.ttf": "199a7bd6ec05cc0838b1cffa21158b14",
"assets/fonts/FiraCode-Regular.ttf": "dc34dd991980e8155dd1f146b0f7cd6d",
"assets/fonts/FiraCode-SemiBold.ttf": "d98c7b35a8b2ea0cc7bbccd7468ea404",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/images/about_me_image.jpg": "292c728ba8cf566921c7880d9cc06725",
"assets/images/ant-design_behance-circle-filled.png": "0f78540380bc3bb0ef2b6d8127095485",
"assets/images/ant-design_github-filled.png": "a71f23f0c480bfce074bd6df57ac21f8",
"assets/images/ant-design_instagram-filled.png": "174a1116f148d09a34fc4c1705c0fb7f",
"assets/images/ant-design_twitter-circle-filled.png": "7c6d156e9643c3f04797faaf60cfac52",
"assets/images/entypo-social_linkedin-with-circle.png": "8c576a47043c9061c11230c5d144677b",
"assets/images/Group%2520310.png": "be60e275b9282414bae77738e1e08308",
"assets/images/Group%252046.png": "aa20547f90aa8681eb40996c31272367",
"assets/images/Latest%2520Group%2520310.png": "8fd27584f7372b7aae4aa096d164f426",
"assets/images/Line%25201.png": "a12fbe3298b189a0261ec58ff2c49f3a",
"assets/images/Line%25202.png": "a12fbe3298b189a0261ec58ff2c49f3a",
"assets/images/New%2520Group%2520310.png": "26aa85b679b63948fc88d018c54c8056",
"assets/images/Rectangle%252016.jpg": "9341457bc016cd5c152ca5b3996e4076",
"assets/images/Rectangle%252017.jpg": "1e2f77b77e2d1a4733e05ca3a4c9d12c",
"assets/images/Rectangle%252018.jpg": "d716378384f772a205374393d8421d26",
"assets/images/Rectangle%252020.jpg": "ccc61b9c15b2a62b1460b7f031c97775",
"assets/images/Rectangle%252023.jpg": "dc17c7238e8edeca8ab3e507ec371742",
"assets/images/Rectangle%252024.jpg": "704f8691b156ecee9ce8dcc804cd0938",
"assets/images/Rectangle%25206_page-0001.jpg": "f7bbde730c1b02aefbef53eb5570b039",
"assets/NOTICES": "63551ab47d7be3e03848c903166f83f6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "9e55234b4839618af07f4f26fcac000b",
"/": "9e55234b4839618af07f4f26fcac000b",
"main.dart.js": "e00e96dddcaadb4abe43cab599e936a6",
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
