---
title: Exempel
author: Marcus Medina
date: 2022-11-28 10:23
lang_supported: ["csharp","java"]
permalink: csharp/asynkron/exempel
tags: ["asynkron","csharp","exempel"]
categories: ["Asynkron","Csharp"]
parent: Asynkron
layout: default
isverified: true
nav_order: 1
---
# Exempel

<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
## Beskrivning

Här följer ett exempel på en klass som söker efter filer i hårddisken genom att använda asynkronitet.

## Exempel

```java
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) throws IOException, ExecutionException, InterruptedException {
        String path = "C:\\Windows";
        String searchPattern = "*.exe";

        CompletableFuture<List<String>> future = searchFilesAsync(path, searchPattern);
        List<String> files = future.get();
        files.forEach(System.out::println);
    }

    static CompletableFuture<List<String>> searchFilesAsync(String path, String searchPattern) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                return Files.walk(Paths.get(path))
                        .map(File::new)
                        .filter(File::isFile)
                        .filter(file -> file.getName().endsWith(searchPattern))
                        .map(File::getAbsolutePath)
                        .collect(Collectors.toList());
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        });
    }
}
```
