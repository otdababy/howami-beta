'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "e47dcd847637816fd620f9ad9907f695",
"index.html": "1cb2b17412581f55082f2edf694128b3",
"/": "1cb2b17412581f55082f2edf694128b3",
"main.dart.js": "e2b48d5475b66e671eb2a09a80998d85",
"404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "df28242542af14cc0f14e85796af3899",
"assets/AssetManifest.json": "12a27216dedac7e57e58a594a0b22c64",
"assets/NOTICES": "03c5f49b05b4486c1b02a039c1401f56",
"assets/FontManifest.json": "3a194cfdf6bcca37dd4c8c5b50f598fd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "33e77bc32b04a07215a490f2dd2a45ae",
"assets/AssetManifest.bin": "bf424c4ddd39cba65208b9ed296bc8a5",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/images/t_strength/4.png": "a1bb1962164e4c1adb6a3b9e64d6f3d0",
"assets/assets/images/t_strength/5.png": "e2712b92cff032934958e743307792a7",
"assets/assets/images/t_strength/2.png": "dd52e579230ea678d023e635b9825f9c",
"assets/assets/images/t_strength/3.png": "56c28ec2651db867feef5866509f60ee",
"assets/assets/images/t_strength/1.png": "1eef79b891b30df3e1faf71a7767afa6",
"assets/assets/images/lover/4.png": "70820e187f626f48ad2df30065b3e398",
"assets/assets/images/lover/5.png": "59eab5639a9a4657298cb3421e3fd357",
"assets/assets/images/lover/2.png": "2d47a36fc2e4dc077da5174db99f4cea",
"assets/assets/images/lover/3.png": "a3881bf0d537b1033e2651d80ddd01b4",
"assets/assets/images/lover/1.png": "971ea93c5542eb3874b779966320ef67",
"assets/assets/images/wordmark.png": "ee29807fccc06d61b591c5526fac26de",
"assets/assets/images/mental/4.png": "47841f59a9f3990d8e51dc3d3c36a604",
"assets/assets/images/mental/5.png": "855d9f3d37dbfb9d4d88941eee2d236d",
"assets/assets/images/mental/2.png": "8ca0a008d352cae2405f622b14d55d11",
"assets/assets/images/mental/3.png": "4e43ce609485ba39851e956c409cc387",
"assets/assets/images/mental/1.png": "202d032dbe23a862677043bf455892d1",
"assets/assets/images/social/4.png": "e7b72c0ad89ce34768bbcd3b0649bbf6",
"assets/assets/images/social/5.png": "06e77c18bbe6444d085515f039a0ba20",
"assets/assets/images/social/2.png": "203a73645c0f154404799fdfbe97887e",
"assets/assets/images/social/3.png": "598cd00c41272c01f8f62a90b2b6890c",
"assets/assets/images/social/1.png": "4c21e4fc1dc3558c3f2efebd28c12e17",
"assets/assets/images/aura/4.png": "a9d6a1341b87a490f80686fdf7577c5d",
"assets/assets/images/aura/5.png": "4de5c8b11bb3e3804bbc4cf565000661",
"assets/assets/images/aura/2.png": "ce502d0a096b0d7f5d066707ecbe14be",
"assets/assets/images/aura/3.png": "70570f065cd1a59c1078b243f6076587",
"assets/assets/images/aura/1.png": "588d1143d871b2e0f59d4604af51a047",
"assets/assets/fonts/YeongdeokSnowCrab.ttf": "1834f2c9f964dac5f56cbf04afc3cbbe",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
