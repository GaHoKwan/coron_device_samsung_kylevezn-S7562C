.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLConnection$DefaultContentHandler;
    }
.end annotation


# static fields
.field private static contentHandlerFactory:Ljava/net/ContentHandlerFactory;

.field static contentHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field private static fileNameMap:Ljava/net/FileNameMap;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field private contentType:Ljava/lang/String;

.field defaultHandler:Ljava/net/ContentHandler;

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private lastModified:J

.field private readTimeout:I

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 140
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/net/URLConnection$DefaultContentHandler;

    invoke-direct {v0}, Ljava/net/URLConnection$DefaultContentHandler;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 106
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 129
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 133
    iput v2, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 135
    iput v2, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 157
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 158
    return-void
.end method

.method private checkNotConnected()V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    return-void
.end method

.method private getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/net/URLConnection;->parseTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, typeString:Ljava/lang/String;
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, cHandler:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 263
    check-cast v1, Ljava/net/ContentHandler;

    .line 306
    .end local v1           #cHandler:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 266
    .restart local v1       #cHandler:Ljava/lang/Object;
    :cond_0
    sget-object v9, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v9, :cond_1

    .line 267
    sget-object v9, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v9, p1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v1

    .line 268
    .local v1, cHandler:Ljava/net/ContentHandler;
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v9, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    check-cast v1, Ljava/net/ContentHandler;

    goto :goto_0

    .line 273
    .local v1, cHandler:Ljava/lang/Object;
    :cond_1
    const-string v9, "java.content.handler.pkgs"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, packageList:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 275
    const-string v9, "\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    .line 276
    .local v7, packageName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, className:Ljava/lang/String;
    const/4 v9, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v2, v9, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 279
    .local v4, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 275
    .end local v4           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 287
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #packageName:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 290
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "org.apache.harmony.awt.www.content."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2       #className:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 297
    .end local v2           #className:Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v1, :cond_5

    .line 298
    instance-of v9, v1, Ljava/net/ContentHandler;

    if-nez v9, :cond_4

    .line 299
    new-instance v9, Ljava/net/UnknownServiceException;

    invoke-direct {v9}, Ljava/net/UnknownServiceException;-><init>()V

    throw v9

    .line 301
    :cond_4
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v9, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    check-cast v1, Ljava/net/ContentHandler;

    goto :goto_0

    .line 306
    :cond_5
    iget-object v1, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v9

    goto :goto_3

    .line 293
    :catch_1
    move-exception v9

    goto :goto_3

    .line 292
    :catch_2
    move-exception v9

    goto :goto_3

    .line 282
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_2

    .line 281
    :catch_4
    move-exception v9

    goto :goto_2

    .line 280
    :catch_5
    move-exception v9

    goto :goto_2
.end method

.method public static getDefaultAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 344
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileNameMap()Ljava/net/FileNameMap;
    .locals 2

    .prologue
    .line 408
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 409
    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/net/DefaultFileNameMap;

    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 412
    :cond_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 681
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 13
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 697
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-nez v6, :cond_0

    .line 698
    const/4 v6, 0x0

    .line 775
    :goto_0
    return-object v6

    .line 701
    :cond_0
    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 702
    const/16 v6, 0x40

    new-array v0, v6, [B

    .line 703
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 704
    .local v3, length:I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 707
    if-ne v3, v9, :cond_1

    .line 708
    const/4 v6, 0x0

    goto :goto_0

    .line 712
    :cond_1
    const-string v1, "US-ASCII"

    .line 713
    .local v1, encoding:Ljava/lang/String;
    const/4 v4, 0x0

    .line 714
    .local v4, start:I
    if-le v3, v8, :cond_6

    .line 715
    aget-byte v6, v0, v10

    if-ne v6, v9, :cond_2

    aget-byte v6, v0, v8

    if-ne v6, v11, :cond_2

    .line 716
    const-string v1, "UTF-16LE"

    .line 717
    const/4 v4, 0x2

    .line 718
    and-int/lit8 v6, v3, 0x1

    sub-int/2addr v3, v6

    .line 720
    :cond_2
    aget-byte v6, v0, v10

    if-ne v6, v11, :cond_3

    aget-byte v6, v0, v8

    if-ne v6, v9, :cond_3

    .line 721
    const-string v1, "UTF-16BE"

    .line 722
    const/4 v4, 0x2

    .line 723
    and-int/lit8 v6, v3, 0x1

    sub-int/2addr v3, v6

    .line 725
    :cond_3
    if-le v3, v12, :cond_6

    .line 726
    aget-byte v6, v0, v10

    const/16 v7, -0x11

    if-ne v6, v7, :cond_4

    aget-byte v6, v0, v8

    const/16 v7, -0x45

    if-ne v6, v7, :cond_4

    aget-byte v6, v0, v12

    const/16 v7, -0x41

    if-ne v6, v7, :cond_4

    .line 728
    const-string v1, "UTF-8"

    .line 729
    const/4 v4, 0x3

    .line 731
    :cond_4
    const/4 v6, 0x3

    if-le v3, v6, :cond_6

    .line 732
    aget-byte v6, v0, v10

    if-nez v6, :cond_5

    aget-byte v6, v0, v8

    if-nez v6, :cond_5

    aget-byte v6, v0, v12

    if-ne v6, v11, :cond_5

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v9, :cond_5

    .line 735
    const-string v1, "UTF-32BE"

    .line 736
    const/4 v4, 0x4

    .line 737
    and-int/lit8 v6, v3, 0x3

    sub-int/2addr v3, v6

    .line 739
    :cond_5
    aget-byte v6, v0, v10

    if-ne v6, v9, :cond_6

    aget-byte v6, v0, v8

    if-ne v6, v11, :cond_6

    aget-byte v6, v0, v12

    if-nez v6, :cond_6

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-nez v6, :cond_6

    .line 742
    const-string v1, "UTF-32LE"

    .line 743
    const/4 v4, 0x4

    .line 744
    and-int/lit8 v6, v3, 0x3

    sub-int/2addr v3, v6

    .line 750
    :cond_6
    new-instance v2, Ljava/lang/String;

    sub-int v6, v3, v4

    invoke-direct {v2, v0, v4, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 753
    .local v2, header:Ljava/lang/String;
    const-string v6, "PK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 754
    const-string v6, "application/zip"

    goto/16 :goto_0

    .line 756
    :cond_7
    const-string v6, "GI"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 757
    const-string v6, "image/gif"

    goto/16 :goto_0

    .line 761
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, textHeader:Ljava/lang/String;
    const-string v6, "<!DOCTYPE HTML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "<HTML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "<HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "<BODY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "<HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 767
    :cond_9
    const-string v6, "text/html"

    goto/16 :goto_0

    .line 770
    :cond_a
    const-string v6, "<?XML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 771
    const-string v6, "application/xml"

    goto/16 :goto_0

    .line 775
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private parseTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "typeString"

    .prologue
    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .local v2, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 790
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 791
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    .line 792
    const/16 v3, 0x5f

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 788
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 816
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 819
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    monitor-exit v1

    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .locals 0
    .parameter "allows"

    .prologue
    .line 826
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 827
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "field"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 836
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 890
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 891
    :try_start_0
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 892
    monitor-exit v1

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 198
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 232
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 316
    const-string v0, "Content-Length"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 3

    .prologue
    .line 337
    const-string v0, "Date"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 364
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .locals 3

    .prologue
    .line 398
    const-string v0, "Expires"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, date:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 527
    .end local p2
    :goto_0
    return-wide p2

    .line 525
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 546
    .end local p2
    :goto_0
    return p2

    .line 545
    .restart local p2
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .parameter "posn"

    .prologue
    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Does not support writing to the input stream"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .locals 4

    .prologue
    .line 599
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 600
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 602
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "Last-Modified"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Does not support writing to the output stream"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 803
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 804
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 967
    if-gez p1, :cond_0

    .line 968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 971
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 847
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 848
    return-void
.end method

.method public setDoInput(Z)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 863
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 864
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 879
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 880
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 909
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 910
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 990
    if-gez p1, :cond_0

    .line 991
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 994
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 927
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 928
    if-nez p1, :cond_0

    .line 929
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_0
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 946
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 947
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 948
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
