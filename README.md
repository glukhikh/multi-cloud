# MultiCloud

MultiCloud is a cloud storages' aggregator. It allows to work with multiple cloud storages as a single.

MultiCloud consists of:
1) API - an entry point for clients. Also, it collects some info from several cloud storages (e.g. total disk space).
2) Adapters - converts the cloud-specific API response format to the MultiCloud-specific format.

```
          +-----+     +---------------+    +------------+
Client<-->| API |<-+->| YandexAdapter |<-->| YandexDisk |
          +-----+  |  +---------------+    +------------+
                   |  +---------------+    +-------------+
                   +->| GoogleAdapter |<-->| GoogleDrive |
                      +---------------+    +-------------+
```

To connect a new cloud storage to the MultiCloud you need to make sure that the cloud storage provides:
1) A total disk space information.
2) A free/usage disk space information.
3) A max file size information.
4) The ability to get a list of directories.
5) The ability to create a directory.
6) The ability to remove a directory.
7) The ability to copy a directory.
8) The ability to upload a file.
9) The ability to download a file.
10) The ability to remove a file.
11) The ability to copy a file.
12) The ability to get a file meta information.

Other operations can be created based on the listed. For example: move = copy + remove.

If the cloud storage has these twelve "atomic" operations then you can write the adapter and connect it to the MultiCloud API.
