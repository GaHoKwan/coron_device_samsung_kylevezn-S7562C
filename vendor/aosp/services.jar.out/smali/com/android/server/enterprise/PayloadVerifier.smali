.class public Lcom/android/server/enterprise/PayloadVerifier;
.super Ljava/lang/Object;
.source "PayloadVerifier.java"


# static fields
.field private static final CLASSES_FILE:Ljava/lang/String; = "classes.dex"

.field public static final ENTERPRISE_PRELOAD_APK:Ljava/lang/String; = "com.sec.enterprise.permissions"

.field private static final LICENSE_FILE:Ljava/lang/String; = "license.dat"

.field private static final MANIFEST_FILE:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final PAYLOAD_BUNDLE_PATH:Ljava/lang/String; = "assets/payload/"

.field private static final PAYLOAD_FILE:Ljava/lang/String; = "sec.android.payload"

.field private static final RESOURCES_FILE:Ljava/lang/String; = "resources.arsc"

.field private static final SPKPath:Ljava/lang/String; = "/data/system/enterprise/vpkp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .parameter "apkPath"
    .parameter "context"

    .prologue
    .line 426
    const/4 v3, 0x0

    .line 427
    .local v3, enterprisePkg:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 429
    .local v0, adminPkg:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.enterprise.permissions"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 438
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_2

    .line 440
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 441
    .local v6, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v8, v1, v4

    .line 442
    .local v8, sig:Landroid/content/pm/Signature;
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v8           #sig:Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 435
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #arr$:[Landroid/content/pm/Signature;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 445
    .local v7, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v8, v1, v4

    .line 446
    .restart local v8       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 449
    .end local v8           #sig:Landroid/content/pm/Signature;
    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 450
    const/4 v9, 0x1

    .line 453
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v7           #set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :goto_3
    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static extractLicense(Ljava/lang/String;)[B
    .locals 10
    .parameter "apkPath"

    .prologue
    const/4 v9, 0x0

    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 233
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_1
    const-string v7, "assets/payload/license.dat"

    invoke-virtual {v3, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 235
    .local v5, je:Ljava/util/jar/JarEntry;
    if-nez v5, :cond_2

    .line 236
    const/4 v7, 0x0

    new-array v0, v7, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 247
    if-eqz v4, :cond_0

    .line 248
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 253
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 254
    :try_start_3
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v2, v3

    .line 259
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    :goto_2
    return-object v0

    .line 237
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v5       #je:Ljava/util/jar/JarEntry;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    long-to-int v6, v7

    .line 238
    .local v6, size:I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 239
    new-array v0, v6, [B

    .line 240
    .local v0, buf:[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-result v6

    .line 247
    if-eqz v4, :cond_3

    .line 248
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 253
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 254
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_4
    :goto_4
    move-object v2, v3

    .line 242
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_2

    .line 243
    .end local v0           #buf:[B
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 247
    if-eqz v4, :cond_5

    .line 248
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 253
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 254
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 259
    :cond_6
    :goto_7
    new-array v0, v9, [B

    goto :goto_2

    .line 246
    :catchall_0
    move-exception v7

    .line 247
    :goto_8
    if-eqz v4, :cond_7

    .line 248
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 253
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    .line 254
    :try_start_b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 246
    :cond_8
    :goto_a
    throw v7

    .line 249
    :catch_1
    move-exception v1

    .line 250
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 255
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 256
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 249
    .local v1, e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 250
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 255
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 256
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 249
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v5       #je:Ljava/util/jar/JarEntry;
    :catch_5
    move-exception v1

    .line 250
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 256
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v6       #size:I
    :catch_7
    move-exception v1

    .line 250
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 255
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 256
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 246
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .end local v6           #size:I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_8

    .line 243
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_5
.end method

.method private static extractPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "apkPath"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 195
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 197
    .local v5, je:Ljava/util/jar/JarEntry;
    if-nez v5, :cond_3

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v5

    .line 199
    if-nez v5, :cond_3

    .line 214
    if-eqz v4, :cond_0

    .line 215
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 220
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 221
    :try_start_3
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v2, v3

    .line 226
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    :cond_2
    :goto_2
    return-object v7

    .line 203
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v5       #je:Ljava/util/jar/JarEntry;
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    .line 204
    .local v6, size:I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 205
    new-array v0, v6, [B

    .line 206
    .local v0, buf:[B
    if-eqz v4, :cond_4

    .line 207
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 209
    :cond_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 214
    if-eqz v4, :cond_5

    .line 215
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 220
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 221
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_6
    :goto_4
    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    move-object v7, v8

    .line 209
    goto :goto_2

    .line 210
    .end local v0           #buf:[B
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 214
    if-eqz v4, :cond_7

    .line 215
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 220
    :cond_7
    :goto_6
    if-eqz v2, :cond_2

    .line 221
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 222
    :catch_1
    move-exception v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 214
    :goto_7
    if-eqz v4, :cond_8

    .line 215
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 220
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 221
    :try_start_b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 213
    :cond_9
    :goto_9
    throw v7

    .line 216
    :catch_2
    move-exception v1

    .line 217
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 222
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 216
    :catch_4
    move-exception v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v5       #je:Ljava/util/jar/JarEntry;
    :catch_5
    move-exception v1

    .line 217
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v6       #size:I
    :catch_7
    move-exception v1

    .line 217
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 222
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 213
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .end local v6           #size:I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_7

    .line 210
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_5
.end method

.method private static getFileData([BILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "buf"
    .parameter "bufSize"
    .parameter "fileName"
    .parameter "apkFile"

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 139
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .local v4, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 141
    .local v6, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-int v2, v8

    .line 142
    .local v2, entrySize:I
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 145
    move v0, p1

    .line 146
    .local v0, count:I
    const/4 v7, 0x0

    .line 149
    .local v7, readSize:I
    :cond_0
    sub-int v8, v0, p1

    sub-int v8, v2, v8

    invoke-virtual {v5, p0, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 150
    add-int/2addr v0, v7

    .line 151
    if-gtz v7, :cond_0

    .line 152
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total read size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 160
    if-eqz v5, :cond_1

    .line 161
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 166
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 167
    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 172
    .end local v0           #count:I
    .end local v2           #entrySize:I
    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #readSize:I
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :goto_2
    return v0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 157
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Check private key"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    if-eqz v5, :cond_3

    .line 161
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 166
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 167
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 172
    :cond_4
    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    .line 159
    :catchall_0
    move-exception v8

    .line 160
    :goto_6
    if-eqz v5, :cond_5

    .line 161
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 166
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 167
    :try_start_8
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 159
    :cond_6
    :goto_8
    throw v8

    .line 162
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 168
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 169
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 162
    .local v1, e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 163
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 169
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 162
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v0       #count:I
    .restart local v2       #entrySize:I
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v6       #je:Ljava/util/jar/JarEntry;
    .restart local v7       #readSize:I
    :catch_5
    move-exception v1

    .line 163
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 169
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v0           #count:I
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #entrySize:I
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #readSize:I
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_6

    .line 155
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_3
.end method

.method private static getFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .parameter "fileName"
    .parameter "apkFile"

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 97
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .local v4, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 99
    .local v6, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    long-to-int v8, v9

    .line 100
    .local v8, total_size:I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 102
    new-array v0, v8, [B

    .line 103
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 104
    .local v1, count:I
    const/4 v7, 0x0

    .line 106
    .local v7, read_size:I
    :cond_0
    sub-int v9, v8, v1

    invoke-virtual {v5, v0, v1, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 107
    add-int/2addr v1, v7

    .line 113
    if-gtz v7, :cond_0

    .line 114
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total read size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 121
    if-eqz v5, :cond_1

    .line 122
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 127
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 128
    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 133
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #read_size:I
    .end local v8           #total_size:I
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :goto_2
    return-object v0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 118
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Check private key"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    if-eqz v5, :cond_3

    .line 122
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 128
    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 133
    :cond_4
    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    .line 120
    :catchall_0
    move-exception v9

    .line 121
    :goto_6
    if-eqz v5, :cond_5

    .line 122
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 127
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 128
    :try_start_8
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 120
    :cond_6
    :goto_8
    throw v9

    .line 123
    :catch_1
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 130
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 123
    .local v2, e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 130
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 123
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v0       #buf:[B
    .restart local v1       #count:I
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v6       #je:Ljava/util/jar/JarEntry;
    .restart local v7       #read_size:I
    .restart local v8       #total_size:I
    :catch_5
    move-exception v2

    .line 124
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 130
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #read_size:I
    .end local v8           #total_size:I
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_6

    .line 116
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_3
.end method

.method private static getFileSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "fileName"
    .parameter "apkFile"

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #ipJarFile:Ljava/util/jar/JarFile;
    .local v2, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    .line 180
    .local v3, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    long-to-int v4, v5

    .line 181
    .local v4, total_size:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getFileSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 188
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v3           #je:Ljava/util/jar/JarEntry;
    .end local v4           #total_size:I
    .restart local v1       #ipJarFile:Ljava/util/jar/JarFile;
    :goto_0
    return v4

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 186
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Check private key"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    const/4 v4, 0x0

    goto :goto_0

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v1       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_1
.end method

.method public static getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apkPath"

    .prologue
    const/4 v4, -0x1

    .line 413
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, end:I
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 416
    .local v2, start:I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 417
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 421
    :goto_0
    return-object v3

    .line 419
    :cond_0
    const-string v3, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "null"

    goto :goto_0
.end method

.method private static declared-synchronized getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "apkPath"

    .prologue
    .line 377
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, path:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 383
    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 377
    .end local v0           #f:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static varargs joinBytes([[B)[B
    .locals 7
    .parameter "bytes"

    .prologue
    .line 83
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    move-object v0, p0

    .local v0, arr$:[[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 86
    .local v1, b:[B
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v1           #b:[B
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v2, 0x0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v1, is:Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 72
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 80
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized removeStoredPublicKeyPath(Ljava/lang/String;)V
    .locals 6
    .parameter "apkPath"

    .prologue
    .line 405
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, path:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit v3

    return-void

    .line 405
    .end local v0           #f:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "toApkPath"
    .parameter "fromApkPath"

    .prologue
    .line 387
    const-class v5, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, path:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/vpkp/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v3, to:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 395
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .local v1, from:Ljava/io/File;
    :try_start_1
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :goto_0
    monitor-exit v5

    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 387
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #from:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #to:Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static verify(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9
    .parameter "apkPath"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, enterpriseApkPath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 326
    .local v5, storedEnterpriseApkPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 328
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 330
    :try_start_0
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 331
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_1

    .line 336
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Enterprise APK Path is NULL , cannot proceed with payload verification."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v6

    .line 371
    :cond_0
    :goto_1
    return v4

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v4, 0x0

    .line 342
    .local v4, result:Z
    if-eqz v5, :cond_2

    .line 343
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "USING STORED PUBLIC KEY"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    invoke-static {v5, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 350
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 351
    :try_start_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "USING FIXED PUBLIC KEY"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    .line 353
    invoke-static {v1, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 354
    if-eqz v4, :cond_3

    .line 355
    invoke-static {p0, v1}, Lcom/android/server/enterprise/PayloadVerifier;->setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    :cond_3
    if-nez v4, :cond_0

    .line 364
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "COMPARING ENTERPRISE SIGNATURE"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    invoke-static {p0, p1}, Lcom/android/server/enterprise/PayloadVerifier;->compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_1

    .line 346
    :catch_1
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 357
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 358
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v6

    .line 359
    goto :goto_1

    .line 367
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 368
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v6

    .line 369
    goto :goto_1
.end method

.method private static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "enterpriseApkPath"
    .parameter "apkPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v7, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 283
    .local v7, jarFile:Ljava/util/jar/JarFile;
    const/16 v13, 0x2000

    new-array v9, v13, [B

    .line 284
    .local v9, readBuffer:[B
    const-string v13, "AndroidManifest.xml"

    invoke-virtual {v7, v13}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    invoke-static {v7, v13, v9}, Lcom/android/server/enterprise/PayloadVerifier;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 287
    .local v2, certs:[Ljava/security/cert/Certificate;
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 288
    if-nez v2, :cond_0

    .line 289
    const/4 v13, 0x0

    .line 321
    :goto_0
    return v13

    .line 292
    :cond_0
    const/4 v12, 0x0

    .line 293
    .local v12, totalDataSize:I
    const-string v13, "AndroidManifest.xml"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 294
    .local v8, manifestSize:I
    const-string v13, "classes.dex"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 295
    .local v3, classesSize:I
    const-string v13, "resources.arsc"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 297
    .local v10, rsrcSize:I
    add-int v13, v8, v3

    add-int/2addr v13, v10

    new-array v11, v13, [B

    .line 298
    .local v11, totalData:[B
    const-string v13, "AndroidManifest.xml"

    move-object/from16 v0, p1

    invoke-static {v11, v12, v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData([BILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 299
    const-string v13, "classes.dex"

    move-object/from16 v0, p1

    invoke-static {v11, v12, v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData([BILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 300
    const-string v13, "resources.arsc"

    move-object/from16 v0, p1

    invoke-static {v11, v12, v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData([BILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 302
    const/4 v13, 0x0

    aget-object v1, v2, v13

    .line 303
    .local v1, cert:Ljava/security/cert/Certificate;
    const/4 v6, 0x1

    .line 304
    .local v6, index:I
    const/4 v5, 0x0

    .line 305
    .local v5, extractedb64Signature:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/server/enterprise/PayloadVerifier;->extractPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 306
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 307
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") Size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    const/4 v13, 0x0

    invoke-static {v5, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 311
    .local v4, extractedSignature:[B
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-static {v11, v4, v13}, Lcom/android/server/enterprise/PayloadVerifier;->verify([B[BLjava/security/PublicKey;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 312
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Verification SUCCESS for Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 315
    :cond_1
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Verification FAILURE for Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 317
    goto/16 :goto_1

    .line 318
    .end local v4           #extractedSignature:[B
    :cond_2
    if-nez v5, :cond_3

    .line 319
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "No more payloads"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private static verify([B[BLjava/security/PublicKey;)Z
    .locals 4
    .parameter "data"
    .parameter "inSignature"
    .parameter "key"

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 266
    .local v1, ret:Z
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 267
    .local v2, verify:Ljava/security/Signature;
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 268
    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 269
    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 279
    .end local v2           #verify:Ljava/security/Signature;
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 275
    .local v0, e:Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
